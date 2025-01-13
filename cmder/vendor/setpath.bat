@echo off

SET PATH=^
%    =%%HOME%\Opt\cmder_mini\bin;^
%    =%%HOME%\Opt\cmder_mini\vendor;^
%    =%%HOME%\AppData\Roaming\pnpm;^
%    =%%HOME%\Bin\starship;^
%    =%%HOME%\Bin\gsudo\x64;^
%    =%%HOME%\Bin\fnm;^
%    =%%HOME%\Bin\uv;^
%    =%%HOME%\Bin\trashy;^
%    =%%HOME%\Bin\pro;^
%    =%%HOME%\Bin\lsd;^
%    =%%HOME%\Bin\tere;^
%    =%%HOME%\Bin\broot\x86_64-pc-windows-gnu;^
%    =%%HOME%\Bin\mprocs;^
%    =%%HOME%\Bin\QuickSFV;^
%    =%%HOME%\Bin\sd;^
%    =%%HOME%\Bin\doggo;^
%    =%%HOME%\Bin\tidy-viewer;^
%    =%%HOME%\Bin\xsv;^
%    =%%HOME%\Bin\sub-batch_1.1.1;^
%    =%%HOME%\Bin\sub_renamer;^
%    =%%HOME%\Bin\postgresql\pgsql\bin;^
%    =%%HOME%\Bin\paletter;^
%    =%%HOME%\Bin\pastel;^
%    =%%HOME%\Bin\PowerSession;^
%    =%%HOME%\Bin\autocast;^
%    =%%HOME%\Bin\agg;^
%    =%%HOME%\Bin\silicon;^
%    =%%HOME%\Bin\mtn;^
%    =%%HOME%\Bin\tv;^
%    =%%HOME%\Bin\HandBrakeCLI;^
%    =%%HOME%\Bin\MediaInfo_CLI;^
%    =%%HOME%\Bin\PgsToStr;^
%    =%%HOME%\Bin\erd;^
%    =%%HOME%\Bin\csview;^
%    =%%HOME%\Bin\svg2png\x64;^
%    =%%HOME%\Bin\exiftool;^
%    =%%HOME%\Bin\video-compare;^
%    =%%HOME%\Bin\dedoc;^
%    =%%HOME%\Bin\bob;^
%    =%%HOME%\Bin\sqlite-tools;^
%    =%%HOME%\Bin\alass\bin;^
%    =%%HOME%\Bin\chezmoi;^
%    =%%HOME%\Bin\7z-extra\x64;^
%    =%%HOME%\Bin\unrar\bin;^
%    =%%HOME%\Bin\dictzip;^
%    =%%HOME%\Bin\yoga;^
%    =%%HOME%\Bin\boon;^
%    =%%HOME%\Bin\love-build;^
%    =%%HOME%\Bin\dufs;^
%    =%%HOME%\Bin\dart-sass;^
%    =%%HOME%\Bin\gmic;^
%    =%%HOME%\Bin\biliupR;^
%    =%%HOME%\Bin\webify;^
%    =%%HOME%\Bin\dolt\bin;^
%    =%%HOME%\Opt\Calibre Portable\Calibre;^
%    =%%HOME%\Lib\lua-5.4.7;^
%    =%%HOME%\Lib\cmake\bin;^
%    =%%HOME%\Lib\go\bin;^
%    =%%HOME%\Lib\love-11.4;^
%    =%%HOME%\Lib\Keypirinha-SDK\cmd;^
%    =%%HOME%\miniconda3\Scripts;^
%    =%%HOME%\Script\mdtable2csv;^
%    =%%HOME%\Github\My_Setup\_rc\cargo\tmp\release\deps;^
%    =%%HOME%\.pyenv\pyenv-win\bin;^
%    =%%HOME%\.pyenv\pyenv-win\shims;^
%    =%%HOME%\Bin\nvm;^
%    =%%HOME%\go\bin;^
%    =%%HOME%\Github\My_Setup\mpv;^
%    =%%HOME%\Github\My_Shell\cmd;^
%    =%%HOME%\Github\My_Shell\bat;^
%    =%%PATH%

rem Cache
rem %    =%%HOME%\Lib\love-0.10.2;^
rem %    =%%HOME%\Lib\love-11.3;^
rem %    =%LuaJIT\src;^
rem %    =%CUDNN\v8.6.0\bin;^
rem %    =%%HOME%\Opt\vim;^

rem Precedence
rem C:\Users\User\AppData\Roaming\pnpm;C:\Users\User\Bin\Git\usr\bin;C:\Users\User\Bin\Git\cmd;

rem Windows User variables
rem (LIB)
rem %PNPM_HOME%;%RBENV_ROOT%\rbenv\bin;%RBENV_ROOT%\shims;C:\Users\User\Lib\zlib\bin;C:\Users\User\Bin\gzip\bin;C:\Users\User\Bin\Git\usr\bin;C:\Users\User\Bin\Git\cmd;C:\Users\User\Bin\PowerShell;C:\Users\User\AppData\Local\Yarn\bin;C:\Users\User\.nvm\v20.17.0;C:\Users\User\AppData\Local\Programs\Python\Python310\Scripts;C:\Users\User\AppData\Local\Programs\Python\Python310;C:\Users\User\Lib\jdk-21.0.4\bin;C:\Users\User\Lib\jdk-21.0.4\lib;C:\Users\User\Lib\gradle-8.5\bin;C:\Users\User\Lib\gradle-8.5\lib;C:\Users\User\Lib\zig;C:\Users\User\.rustup\toolchains\stable-x86_64-pc-windows-msvc\bin;C:\Users\User\.local\bin;C:\Users\User\.cargo\bin;C:\Users\User\Lib\;C:\Users\User\Lib\luajit\src;C:\Users\User\Lib\clang+llvm\bin;C:\Users\User\Lib\rime\dist\lib;C:\Users\User\Lib\strawberry-perl\c\bin;C:\Users\User\Lib\strawberry-perl\perl\bin;C:\Users\User\Lib\strawberry-perl\perl\site\bin;C:\Users\User\Opt\MiKTeX\texmfs\install\miktex\bin\x64;C:\Users\User\Lib\lua51\bin;C:\Users\User\Lib\edgedriver;C:\Users\User\Bin\sqlite-tools;C:\Users\User\Bin\fortune;
rem (BIN)
rem C:\Users\User\Bin\sed;C:\Users\User\Bin\pandoc;C:\Users\User\Bin\poppler\Library\bin;C:\Users\User\Bin\curl\bin;C:\Users\User\Bin\curl_x32\bin;C:\Users\User\Bin\yt-dlp;C:\Users\User\Lib\ffmpeg-gpl-shared\bin;C:\Users\User\Lib\ImageMagick;C:\Users\User\Opt\mpv;C:\Users\User\Bin\PowerSession;C:\Users\User\Bin\rclone;C:\Program Files (x86)\MeCab\bin;C:\Users\User\Bin\glow;C:\Users\User\Bin\gh\bin;C:\Users\User\Lib\make-bin\bin;C:\Users\User\Lib\make-dep\bin;C:\Users\User\Bin\lolcate;C:\Users\User\Bin\fd;C:\Users\User\Bin\fzf;C:\Users\User\Bin\zoxide;C:\Users\User\Bin\wget\bin;C:\Users\User\Bin\wget-dep\bin;C:\Users\User\Bin\bat;C:\Users\User\Bin\jq;C:\Users\User\Bin\ripgrep;C:\Users\User\Bin\chafa;C:\Users\User\Bin\vimg;C:\Users\User\Bin\ES;C:\Users\User\Bin\ngrok;C:\Users\User\Lib\gstreamer\1.0\msvc_x86_64\bin;C:\Users\User\Bin\latexindent\bin\windows
rem (OPT)
rem C:\Program Files\7-Zip;C:\Users\User\Opt\shell-x;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files (x86)\ZeroTier\One;C:\Program Files\Sublime Text\;C:\Program Files\WinMerge;C:\Program Files\darktable\bin;C:\Program Files (x86)\Aspell-0.60\bin;C:\Users\User\AppData\Local\GitHubDesktop\bin;C:\Program Files\eSpeak NG;C:\Users\User\Opt\tabby-cuda122
rem (CUDNN)
rem C:\Program Files\NVIDIA\CUDNN\v9.4\bin\12.6;C:\Program Files\NVIDIA\CUDNN\v9.4\include\12.6;C:\Program Files\NVIDIA\CUDNN\v9.4\lib\12.6\x64
rem Windows System variables
rem C:\Windows\system32
rem C:\Windows
rem C:\Windows\System32\WindowsPowerShell\v1.0
rem C:\Windows\System32\OpenSSH