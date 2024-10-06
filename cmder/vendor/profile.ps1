$CMDER_INIT_START = Get-Date

if (!$PSScriptRoot) {
    $PSScriptRoot = Split-Path $Script:MyInvocation.MyCommand.Path
}

if ($ENV:CMDER_USER_CONFIG) {
    Write-Verbose "CMDER IS ALSO USING INDIVIDUAL USER CONFIG FROM '$ENV:CMDER_USER_CONFIG'!"
}

if (!$ENV:CMDER_ROOT) {
    if ($ENV:ConEmuDir) {
        $ENV:CMDER_ROOT = Resolve-Path($ENV:ConEmuDir + "\..\..")
    } else {
        $ENV:CMDER_ROOT = Resolve-Path($PSScriptRoot + "\..")
    }
}

$ENV:CMDER_ROOT = ($ENV:CMDER_ROOT).TrimEnd("\")

$moduleInstallerAvailable = [bool](Get-Command -Name 'Install-Module' -ErrorAction SilentlyContinue)

$CmderModulePath = Join-path $PSScriptRoot "psmodules/"

$CmderFunctions  = Join-Path $CmderModulePath "Cmder.ps1"
. $CmderFunctions

if(-not $moduleInstallerAvailable -and -not $env:PSModulePath.Contains($CmderModulePath) ) {
    $env:PSModulePath = $env:PSModulePath.Insert(0, "$CmderModulePath;")
}

$gitVersionVendor = (readVersion -gitPath "$ENV:CMDER_ROOT\vendor\git-for-windows\cmd")
Write-Debug "GIT VENDOR: ${gitVersionVendor}"

foreach ($git in (Get-Command -ErrorAction SilentlyContinue 'git')) {
    Write-Debug "GIT PATH: {$git.Path}"
    $gitDir = Split-Path -Path $git.Path
    $gitDir = isGitShim -gitPath $gitDir
    $gitVersionUser = (readVersion -gitPath $gitDir)
    Write-Debug "GIT USER: ${gitVersionUser}"

    $useGitVersion = compare_git_versions -userVersion $gitVersionUser -vendorVersion $gitVersionVendor
    Write-Debug "Using Git Version: ${useGitVersion}"

    if ($null -eq $gitPathUser) {
        if ($gitDir -match '\\mingw32\\bin' -or $gitDir -match '\\mingw64\\bin') {
            $gitPathUser = ($gitDir.subString(0,$gitDir.Length - 12))
        } else {
            $gitPathUser = ($gitDir.subString(0,$gitDir.Length - 4))
        }
    }

    if ($useGitVersion -eq $gitVersionUser) {
        Write-Debug "Using Git Dir: ${gitDir}"
        $ENV:GIT_INSTALL_ROOT = $gitPathUser
        $ENV:GIT_INSTALL_TYPE = 'USER'
        break
    }
}

if ($null -eq $ENV:GIT_INSTALL_ROOT -and $null -ne $gitVersionVendor) {
    $ENV:GIT_INSTALL_ROOT = "$ENV:CMDER_ROOT\vendor\git-for-windows"
    $ENV:GIT_INSTALL_TYPE = 'VENDOR'
}

Write-Debug "GIT_INSTALL_ROOT: ${ENV:GIT_INSTALL_ROOT}"
Write-Debug "GIT_INSTALL_TYPE: ${ENV:GIT_INSTALL_TYPE}"

if ($null -ne $ENV:GIT_INSTALL_ROOT) {
    $env:Path = Configure-Git -gitRoot "$ENV:GIT_INSTALL_ROOT" -gitType $ENV:GIT_INSTALL_TYPE -gitPathUser $gitPathUser
}

if (Get-Command -Name "vim" -ErrorAction SilentlyContinue) {
    New-Alias -name "vi" -value vim
}

if (Get-Module PSReadline -ErrorAction "SilentlyContinue") {
    Set-PSReadlineOption -ExtraPromptLineCount 1
}

$env:gitLoaded = $null
[ScriptBlock]$PrePrompt = {}
[ScriptBlock]$PostPrompt = {}
[ScriptBlock]$CmderPrompt = {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = [Security.Principal.WindowsPrincipal] $identity
    $adminRole = [Security.Principal.WindowsBuiltInRole]::Administrator
    $color = "White"
    if ($principal.IsInRole($adminRole)) { $color = "Red" }
    $Host.UI.RawUI.ForegroundColor = "White"
    Microsoft.PowerShell.Utility\Write-Host "PS " -NoNewline -ForegroundColor $color
    Microsoft.PowerShell.Utility\Write-Host $pwd.ProviderPath -NoNewLine -ForegroundColor Green
    checkGit($pwd.ProviderPath)
    Microsoft.PowerShell.Utility\Write-Host "`nλ" -NoNewLine -ForegroundColor "DarkGray"
}

$env:Path = "$Env:CMDER_ROOT\bin;$Env:CMDER_ROOT\vendor\bin;$env:Path;$Env:CMDER_ROOT"

if (-not (Test-Path -PathType container "$ENV:CMDER_ROOT\config\profile.d")) {
    New-Item -ItemType Directory -Path "$ENV:CMDER_ROOT\config\profile.d"
}

Push-Location $ENV:CMDER_ROOT\config\profile.d
foreach ($x in Get-ChildItem *.psm1) {
    Write-Verbose "Sourcing $x"
    Import-Module $x
}
foreach ($x in Get-ChildItem *.ps1) {
    Write-Verbose "Sourcing $x"
    . $x
}
Pop-Location

if ($ENV:CMDER_USER_CONFIG -ne "" -and (Test-Path "$ENV:CMDER_USER_CONFIG\profile.d")) {
    Push-Location $ENV:CMDER_USER_CONFIG\profile.d
    foreach ($x in Get-ChildItem *.psm1) {
        Write-Verbose "Sourcing $x"
        Import-Module $x
    }
    foreach ($x in Get-ChildItem *.ps1) {
        Write-Verbose "Sourcing $x"
        . $x
    }
    Pop-Location
}

if (Test-Path "$env:CMDER_ROOT\config\user-profile.ps1") {
    Rename-Item  "$env:CMDER_ROOT\config\user-profile.ps1" user_profile.ps1
}

$CmderUserProfilePath = Join-Path $env:CMDER_ROOT "config\user_profile.ps1"
if (Test-Path $CmderUserProfilePath) {
}

if ($ENV:CMDER_USER_CONFIG) {
    if (Test-Path "$env:CMDER_USER_CONFIG\user-profile.ps1") {
        Rename-Item  "$env:CMDER_USER_CONFIG\user-profile.ps1" user_profile.ps1
    }

    $env:Path = "$Env:CMDER_USER_CONFIG\bin;$env:Path"

    $CmderUserProfilePath = Join-Path $ENV:CMDER_USER_CONFIG "user_profile.ps1"
    if (Test-Path $CmderUserProfilePath) {
    }
}

if (-not (Test-Path $CmderUserProfilePath)) {
    $CmderUserProfilePath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($CmderUserProfilePath)
    Write-Host -NoNewline "`r"
    Write-Host -BackgroundColor Green -ForegroundColor Black "First Run: Creating user startup file: $CmderUserProfilePath"
    Copy-Item "$env:CMDER_ROOT\vendor\user_profile.ps1.default" -Destination $CmderUserProfilePath
}

#
#

if ( $(Get-Command prompt).Definition -match 'PS \$\(\$executionContext.SessionState.Path.CurrentLocation\)\$\(' -and `
    $(Get-Command prompt).Definition -match '\(\$nestedPromptLevel \+ 1\)\) ";') {

    <#
    This scriptblock runs every time the prompt is returned.
    Explicitly use functions from MS namespace to protect from being overridden in the user session.
    Custom prompt functions are loaded in as constants to get the same behaviour
    #>
    [ScriptBlock]$Prompt = {
        $lastSUCCESS = $?
        $realLastExitCode = $LastExitCode
        $host.UI.RawUI.WindowTitle = Microsoft.PowerShell.Management\Split-Path $pwd.ProviderPath -Leaf
        Microsoft.PowerShell.Utility\Write-Host -NoNewline "$([char]0x200B)`r$([char]0x1B)[K"
        if ($lastSUCCESS -or ($LastExitCode -ne 0)) {
            Microsoft.PowerShell.Utility\Write-Host
        }
        PrePrompt | Microsoft.PowerShell.Utility\Write-Host -NoNewline
        CmderPrompt
        PostPrompt | Microsoft.PowerShell.Utility\Write-Host -NoNewline
        $global:LastExitCode = $realLastExitCode
        return " "
    }


    Set-Item -Path function:\PrePrompt   -Value $PrePrompt   -Options Constant
    Set-Item -Path function:\CmderPrompt -Value $CmderPrompt -Options Constant
    Set-Item -Path function:\PostPrompt  -Value $PostPrompt  -Options Constant

    Set-Item -Path function:\prompt  -Value $Prompt  -Options ReadOnly
}

$CMDER_INIT_END = Get-Date

$ElapsedTime = New-TimeSpan -Start $CMDER_INIT_START -End $CMDER_INIT_END

Write-Verbose "Elapsed Time: $($ElapsedTime.TotalSeconds) seconds total"