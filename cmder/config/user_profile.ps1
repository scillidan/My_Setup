# TokyoNight Theme
$global:PoshColor = @{
    UseConsoleColors = $true
    DirectoryForeground = 'Green'
    File = [ordered]@{
        HiddenDirectory = @{ Color = '#7aa2f7'; Hidden = $true; Directory = $true; BackgroundColor = 'White' }
        CompressedDirectory = @{ Color = '#7aa2f7'; Compressed =  $true}
        Hidden     = @{ Color = '#a9b1d6'; Hidden = $true }
        IgnoreFiles= @{ Color = '#a9b1d6'; Pattern = '^\.' }
        Code       = @{ Color = '#e0af68'; Pattern = '\.(java|c|cpp|cs|js|css|html|vb)$' }
        Executable = @{ Color = '#f7768e'; Pattern = '\.(exe|bat|cmd|py|pl|ps1|psm1|vbs|rb|reg|ps1|sh)$' }
        Text       = @{ Color = '#bb9af7'; Pattern = '\.(txt|cfg|conf|ini|csv|log|config|xml|yml|md|markdown)$' }
        Compressed = @{ Color = '#9ece6a'; Pattern = '\.(zip|tar|gz|rar|jar|war)$' }
        Directory  = @{ Color = '#7dcfff'; Directory = $true}
        System     = @{ Color = '#bb9af7'; System = $true}
        Default    = @{ Color = '#c0caf5' }
    }
    Service = @{
        Running = @{ Color = '#9ece6a'}
        Stopped = @{ Color = '#f7768e'}
        Default = @{ Color = '#c0caf5'}
        Properties = @{ Color = '#c0caf5'}
    }
    Match = @{
        Default = @{Color = '#c0caf5'}
        MatchText = @{ Color = '#7dcfff'}
        Match = @{Color = '#c0caf5'}
        LineNumber = @{Color = '#f7768e'}
        File = @{Color = '#9ece6a'}
    }
    Module = @{
        Binary = @{Color = '#c0caf5'}
        Cim = @{Color = '#7dcfff'}
        Manifest = @{Color = '#9ece6a'}
        Script = @{Color = '#e0af68'}
        Workflow = @{Color = '#bb9af7'}
    }
    EventLog = @{
        Critical = @{Color = '#bb9af7'}
        Error  = @{Color = '#f7768e'}
        Warning = @{Color = '#e0af68'}
        Information = @{Color = '#c0caf5'}
        Default = @{Color = '#a9b1d6'}
    }
    PSDriveInfo = @{
        Alias = @{Color = '#a9b1d6'}
        FileSystem = @{Color = '#9ece6a'}
        Certificate = @{Color = '#7dcfff'}
        Environment = @{Color = '#a9b1d6'}
        Function = @{Color = '#e0af68'}
        Registry = @{Color = '#7aa2f7'}
        Variable = @{Color = '#7dcfff'}
        WSMan = @{Color = '#7aa2f7'}
        Default = @{Color = '#c0caf5'}
        LowSpace = @{Color = '#f7768e'}
        LowSpacePercent = @{Value = 20}
    }
    CommandInfo = @{
        Default = @{Color = '#c0caf5'}
        Alias = @{Color = '#9ece6a'}
        Script = @{Color = '#7aa2f7'}
        Function = @{Color = '#e0af68'}
        CommandLet = @{Color = '#7dcfff'}
        Application = @{Color = '#a9b1d6'}
        RemoteCommand = @{Color = '#a9b1d6'}
        ExternalScript = @{Color = '#9ece6a'}
    }
}

$env:HOME = "C:\Users\User"
Set-Location -Path "$env:HOME"
$currentDir = Get-Location
Write-Host "Current working directory is: $currentDir"

# Startship

$env:STARSHIP_CONFIG = "$env:HOME\Github\My_Setup\starship\starship_powershell.toml"
$env:STARSHIP_CACHE = "$env:HOME\AppData\Local\Temp"
function Invoke-Starship-TransientFunction {
  &starship module character
}
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt

## rbenv for Windows

# $env:RBENV_ROOT = "$env:HOME\Lib\rbenv"
# $env:RBENV_USE_MIRROR = "CN"
# & $env:RBENV_ROOT\rbenv\bin\rbenv.ps1" init

# Others
# Import-Module -Name Terminal-Icons
# Import-Module PoshColor
# inshellisense

# Clear-Host