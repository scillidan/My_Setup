;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
l=ls --show-control-chars -CFGNhp --color --ignore={"NTUSER.DAT*","ntuser.dat*"} $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
td=tere

;= ss=scoop search $*
ss=scoop-search $*
;= si=scoop install $*
;= sci=scoop install scoop-cn/$*
;= su=scoop uninstall $*
sh=scoop home $*
;= sl=scoop list
;= sst=scoop status
;= sup=scoop update $*
;= sua=scoop update -a -k
;= scca=scoop cache rm *
;= scua=scoop cleanup *
;= ch=choco info $*
;= cs=choco search $*
;= ci=gsudo choco install -y $*
;= cu=gsudo choco uninstall $*
;= cup=gsudo choco upgrade $*
;= cua=gsudo choco upgrade all -y
;= cl=choco list

;= yi=yarn add $*
;= yu=yarn remove $*
;= yc=yarn cache clean
;= yarn=corepack yarn $*
;= yarnpkg=corepack yarnpkg $*
;= vcs=vcpkg search $*
;= vci=vcpkg install $*
;= vcu=vcpkg remove $*
;= vcup=C:\dev\vcpkg && git pull
;= dsi=datasette install $*
;= dsu=datasette uninstall $*

;= p2=gsudo pm2 $*
;= esw=es -path . $*

pwd=cd
rfe="C:\Users\User\Bin\RefrEnv\refrenv.bat"
ipi=ipconfig | findstr /i "ipv4"
ls=lsd --icon never
e=explorer $CD$\$*
d="C:\Program Files\GPSoftware\Directory Opus\dopus.exe" "%CD%\$*"
open=open-cli $*

gc=git clone --depth=1 $*
ghc=gh repo clone $*
xgc=git clone https://ghproxy.com/$*
gsa=git submodule add -f $*
gxy=git config --global http.proxy "socks5://127.0.0.1:$*"
nxy=npm config set proxy http:///127.0.0.1:$1 && npm config set https-proxy http:///127.0.0.1:$1 && npm config get proxy && npm config get https-proxy
unxy=npm config delete proxy && npm config delete https-proxy && npm config get proxy && npm config get https-proxy
gxyf=git config --global --unset http.proxy
sslt=git config --global http.sslVerify true
sslf=git config --global http.sslVerify false
ghi=gh extension install $*
ghu=gh extension remove $*
ps=pip_search $*
pi39=py39 -m pip install $*
pu39=py39 -m pip uninstall $*
pi310=py310 -m pip install $*
pu310=py310 -m pip uninstall $*
xpi=pipx install $*
xpu=pipx uninstall $*
pcp=pip cache purge
pva=venv\Scripts\activate.bat
ni=npm18 install $* -g
nu=npm18 uninstall $* -g
ns=npms search $*
nca=npm  cache clear --force
nff=npm audit fix --force
fni=fnm install v$*
fnu=fnm use v$*
xni=pnpm install $*
xnu=pnpm uninstall $*
xnl=pnpm ls -g
cgi=cargo install $*
cgu=cargo uninstall $*
cgs=cargo search $* --registry crates-io
cgbi=cargo-binstall install $*
gs=gofind $*
gs2=gopicker $*
ds=gsudo docker search $*
dcu=gsudo docker compose up -d

dga=doggo A $* @1.1.1.1
dgg=doggo A $* @8.8.8.8
alas=C:\Users\User\Bin\alass\alass.bat $1.$2 $1.$3 $1.alass.$3
er=erd --disk-usage line --sort name --dir-order first --layout inverted $*
jqp=jq ".scripts" package.json
kce="C:\Users\User\Script\komga-cover-extractor\venv\Scripts\python.exe" "C:\Users\User\Script\komga-cover-extractor\komga_cover_extractor.py" $*