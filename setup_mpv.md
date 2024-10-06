## Install (on Windows) (TBD)

```sh
set "HOME=C:/Users/User"
mkdir "%HOME%/Opt"
cd "%HOME%/Opt"
```

1. Get `mpv-x86_64-****.7z` (Not `v3`) from [mpv-winbuild - Releases](https://github.com/zhongfly/mpv-winbuild/releases). See [mpv Vs. mpv-v3](https://www.reddit.com/r/mpv/comments/1bevggz/mpv_vs_mpvv3/).
2. Decompress it to `mpv/`.

```sh
mkdir "%HOME%/Download/mpv"
cd "%HOME%/Download/mpv"
```

1. Get `uosc.conf`, `uosc.zip` from [uosc - Releases](https://github.com/tomasklaen/uosc/releases)
2. Get `mpv-handler-windows-amd64.zip` from [mpv handler - Releases](https://github.com/akiirui/mpv-handler/releases)

Decompress to:

```
uosc/
mpv-handler/
```

In Install all `fonts` under `uosc/fonts/`.
In `mpv-handler/`, Add `mpv = "C:\\Users\\User\\Opt\\mpv_stream\\mpv.exe"` into `config.toml`. Run `handler-install.bat` as `Administrator`. Then install

```
	"www.bilibili.com": /www.bilibili.com\/video/(av|bv)/gi,
```

To:

```
  "www.bilibili.com": /www.bilibili.com\/(video|list)\/(av|bv|ml)/gi,
```

```sh
mkdir "%HOME%/Source/mpv"
cd "%HOME%/Source/mpv"
git clone --depth=1 https://gist.github.com/blackarcher21/162dc1bef708e90082c6c4f9500c1997 remember-volume.lua
git clone --depth=1 https://github.com/po5/evafast
git clone --depth=1 https://github.com/natural-harmonia-gropius/hdr-toys
git clone --depth=1 https://github.com/natural-harmonia-gropius/input-event
git clone --depth=1 https://github.com/po5/memo
git clone --depth=1 https://github.com/mpv-player/mpv
git clone --depth=1 https://github.com/ento/mpv-cheatsheet
git clone --depth=1 https://github.com/magnum357i/mpv-dualsubtitles
git clone --depth=1 https://github.com/jonniek/mpv-filenavigator
git clone --depth=1 https://github.com/occivink/mpv-gallery-view
git clone --depth=1 https://github.com/occivink/mpv-image-viewer
git clone --depth=1 https://github.com/thinkmcflythink/mpv-loudnorm
git clone --depth=1 https://github.com/dudemanguy/mpv-manga-reader
git clone --depth=1 https://github.com/jonniek/mpv-nextfile
git clone --depth=1 https://github.com/verygoodlee/mpv-pip
git clone --depth=1 https://github.com/jonniek/mpv-playlistmanager
git clone --depth=1 https://github.com/torque/mpv-progressbar
git clone --depth=1 https://github.com/christoph-heinrich/mpv-quality-menu
git clone --depth=1 https://github.com/cogentredtester/mpv-scripts mpv-scripts@cogentredtester
git clone --depth=1 https://github.com/jonniek/mpv-scripts mpv-scripts@jonniek
git clone --depth=1 https://github.com/stax76/mpv-scripts mpv-scripts@stax76
git clone --depth=1 https://github.com/zenyd/mpv-scripts mpv-scripts@zenyd
git clone --depth=1 https://github.com/ben-kerman/mpv-sub-scripts
git clone --depth=1 https://github.com/christoph-heinrich/mpv-subtitle-lines
git clone --depth=1 https://github.com/po5/remember_audio_geometry
git clone --depth=1 https://github.com/naiveinvestigator/save-playlist
git clone --depth=1 https://github.com/po5/thumbfast
git clone --depth=1 https://github.com/jonniek/unseen-playlistmaker
git clone --depth=1 https://github.com/directorscut82/find_subtitles
```

Need test or use:

```sh
git clone --depth=1 https://github.com/zxhzxhz/mpv-chapters
git clone --depth=1 https://github.com/vc-01/metadata-osd
git clone --depth=1 https://github.com/Digitalone1/mpv-acestream
git clone --depth=1 https://github.com/nmoorthy524/mpv-Change-OSD-Media-Title
git clone --depth=1 https://github.com/CogentRedTester/mpv-file-browser
```


Test:

```sh

```

## Test

```sh
test_on_windows.bat
```

```sh
m.bat video <File>
m.bat music <File>
...
```

## Setup

On Windows10, run as Administrator:

```sh
setup_env.bat
setup_on_windows.bat
```

Set mpv default config:

```sh
set_default_config_on_windows.bat
```


