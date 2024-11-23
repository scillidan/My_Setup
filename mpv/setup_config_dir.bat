@echo off

set "HOME=C:\Users\User"

set "MPV_CONFIG=%APPDATA%\mpv"
set "MPV_OPT=%HOME%\Opt\mpv"
set "MPV_SETUP=%HOME%\Github\My_Setup\mpv"
set "MPV_DL=%HOME%\Download\mpv"
set "MPV_SRC=%HOME%\Source\mpv"

set "IND=input"
set "INCLD=include"
set "INCLOD=include-opts"
set "SD=scripts"
set "SOD=script-opts"
set "SMD=script-modules"
set "SSD=%MPV_SETUP%\%SD%"
set "SSOD=%MPV_SETUP%\%SOD%"

set "CONFIG_DIR_TEST=%MPV_SETUP%\_config_dir_test"
set "CONFIG_DIR_VIDEO=%MPV_SETUP%\_config_dir_video"
set "CONFIG_DIR_STREAM=%MPV_SETUP%\_config_dir_stream"
set "CONFIG_DIR_EDIT=%MPV_SETUP%\_config_dir_edit"
set "CONFIG_DIR_MUSIC=%MPV_SETUP%\_config_dir_music"
set "CONFIG_DIR_KARAOK=%MPV_SETUP%\_config_dir_karaok"
set "CONFIG_DIR_MANGA=%MPV_SETUP%\_config_dir_manga"

set "CONFIG_DIR_ALL=%CONFIG_DIR_GLOBAL% %CONFIG_DIR_TEST% %CONFIG_DIR_VIDEO% %CONFIG_DIR_STREAM% %CONFIG_DIR_EDIT% %CONFIG_DIR_MUSIC% %CONFIG_DIR_KARAOK% %CONFIG_DIR_MANGA%"

for %%d in (%CONFIG_DIR_ALL%) do (
    rmdir /S /Q "%%d"
    mkdir "%%d"
    mkdir "%%d\%SD%"
    mkdir "%%d\%SOD%"
    mkdir "%%d\%SMD%"
    mkdir "%%d\fonts"
    mkdir "%%d\watch_later"
)

type "%INCLD%\_global.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLOD%\uosc.conf" "%INCLD%\video.conf" > "%CONFIG_DIR_VIDEO%\mpv.conf"
type "%INCLD%\_global.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLD%\video.conf" "%INCLD%\stream.conf" > "%CONFIG_DIR_STREAM%\mpv.conf"
type "%INCLD%\_global.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLOD%\uosc.conf" "%INCLD%\video.conf" > "%CONFIG_DIR_EDIT%\mpv.conf"
type "%INCLD%\_global.conf" "%INCLD%\_lyric.conf" "%INCLD%\music.conf" > "%CONFIG_DIR_MUSIC%\mpv.conf"
type "%INCLD%\_global.conf" "%INCLD%\_subtitle.conf" "%INCLD%\manga.conf" > "%CONFIG_DIR_MANGA%\mpv.conf"

type "%IND%\test.conf" > "%CONFIG_DIR_TEST%\input.conf"
type "%IND%\_global.conf" "%IND%\_uosc.conf" "%IND%\video.conf" > "%CONFIG_DIR_VIDEO%\input.conf"
type "%IND%\_global.conf" "%IND%\stream.conf" > "%CONFIG_DIR_STREAM%\input.conf"
type "%IND%\_global.conf" "%IND%\_uosc.conf" "%IND%\edit.conf" > "%CONFIG_DIR_EDIT%\input.conf"
type "%IND%\_global.conf" "%IND%\music.conf" > "%CONFIG_DIR_MUSIC%\input.conf"
type "%IND%\_global.conf" "%IND%\manga.conf" > "%CONFIG_DIR_MANGA%\input.conf"

set "CONFIG_GLOBAL=%CONFIG_DIR_VIDEO% %CONFIG_DIR_STREAM% %CONFIG_DIR_EDIT% %CONFIG_DIR_MUSIC% %CONFIG_DIR_KARAOK% %CONFIG_DIR_MANGA%"

for %%d in (%CONFIG_GLOBAL%) do (
    mklink /J "%%d\%INCLD%" "%MPV_SETUP%\%INCLD%"
    mklink "%%d\%SMD%\scroll-list.lua" "%MPV_SRC%\mpv-scroll-list\scroll-list.lua"
    mklink "%%d\%SD%\user-input.lua" "%MPV_SRC%\mpv-user-input\user-input.lua"
    mklink "%%d\%SMD%\user-input-module.lua" "%MPV_SRC%\mpv-user-input\user-input-module.lua"
    mklink "%%d\%SD%\inputevent.lua" "%MPV_SRC%\input-event\inputevent.lua"
    mklink "%%d\%SD%\search-page.lua" "%MPV_SRC%\mpv-search-page\search-page.lua"
    rem copy "%MPV_SRC%\mpv-search-page\search_page.conf" "%SSOD%\search_page.conf"
    mklink "%%d\%SOD%\search_page.conf" "%SSOD%\search_page.conf"
    mklink "%%d\%SMD%\extended-menu.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\extended-menu.lua"
    mklink "%%d\%SD%\M-x.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\M-x.lua"
    rem copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\M_x.conf" "%SSOD%\M_x.conf"
    mklink "%%d\%SOD%\M_x.conf" "%SSOD%\M_x.conf"
    mklink "%%d\%SMD%\leader.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\script-modules\leader.lua"
    mklink "%%d\%SD%\leader.lua" "%MPV_SRC%\mpv-scripts@Seme4eg\leader.lua"
    rem copy "%MPV_SRC%\mpv-scripts@Seme4eg\script-opts\leader.conf" "%SSOD%\leader.conf"
    mklink "%%d\%SOD%\leader.conf" "%SSOD%\leader.conf"
    mklink "%%d\%SD%\show-errors.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\show-errors.lua"
    mklink "%%d\%SD%\reload.lua" "%MPV_SRC%\mpv-scripts@sibwaf\reload.lua"
    mklink "%%d\%SD%\auto-save-state.lua" "%MPV_DL%\dotfiles@AN3223\auto-save-state.lua"
    mklink "%%d\%SD%\blackout.lua" "%MPV_SRC%\mpv-scripts@sibwaf\blackout.lua"
    mklink "%%d\%SD%\ontop-playback.lua" "%MPV_SRC%\mpv\TOOLS\lua\ontop-playback.lua"
    mklink "%%d\%SD%\ontop-window.lua" "%MPV_SRC%\mpv-ontop-window\ontop-window.lua"
    rem copy "%MPV_SRC%\mpv-filenavigator\navigator.lua" "%%d\%SSD%\navigator.lua"
    mklink "%%d\%SD%\navigator.lua" "%SSD%\navigator.lua"
    mklink "%%d\%SOD%\navigator.conf" "%SSOD%\navigator.conf"
    mklink "%%d\%SD%\playlistmanager.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.lua"
    mklink "%%d\%SD%\playlistmanager-save-interactive.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager-save-interactive.lua"
    rem copy "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf" "%SSOD%playlistmanager.conf"
    mklink "%%d\%SOD%\playlistmanager.conf" "%SSOD%\playlistmanager.conf"
    mklink "%%d\%SD%\Rename.lua" "%MPV_SRC%\mpv-rename\Rename.lua"
    mklink "%%d\%SD%\delete_file.lua" "%MPV_SRC%\mpv-scripts@zenyd\delete_file.lua"
    mklink "%%d\%SOD%\delete_file.conf" "%SSOD%\delete_file.conf"
    mklink "%%d\%SD%\open-dir.lua" "%MPV_SRC%\open-dir\open-dir.lua"
)

set "CONFIG_TEST=%CONFIG_DIR_TEST%"

for %%d in (%CONFIG_TEST%) do (
    rem mklink "%%d\%SD%\save-playlist.lua" "%MPV_SRC%\save-playlist\save-playlist.lua"
    rem mklink "%%d\%SD%\progressbar.lua" "%MPV_DL%\progressbar-2024.06.19.0.lua"
    rem rem mklink "%%d\%SOD%\torque-progressbar.conf" "%MPV_SRC%\torque-progressbar.conf"
    rem mklink "%%d\%SOD%\torque-progressbar.conf" "%SSOD%\torque-progressbar.conf"
)

set "CONFIG_SHADER=%CONFIG_DIR_VIDEO%"

for %%d in (%CONFIG_SHADER%) do (
    mklink "%%d\%SD%\sview.lua" "%MPV_SRC%\mpv-scripts@he2a\scripts\sview.lua"
    mklink "%%d\%SD%\hdr-toys-helper.lua" "%MPV_DL%\HDR-Toys\scripts\hdr-toys-helper.lua"
    type "%MPV_DL%\HDR-Toys\hdr-toys.conf" >> "%%d\mpv.conf"
    type "%MPV_SRC%\mpv-retro-shaders\all.conf" >> "%%d\mpv.conf"
    mkdir "%%d\shaders"
    mklink /J "%%d\shaders\hdr-toys" "%MPV_SRC%\HDR-Toys\shaders\hdr-toys"
    mklink /J "%%d\shaders\mpv-retro-shaders" "%MPV_SRC%\mpv-retro-shaders"
)

set "CONFIG_UI_UOSC=%CONFIG_DIR_VIDEO% %CONFIG_DIR_EDIT%"

for %%d in (%CONFIG_UI_UOSC%) do (
    mklink /J "%%d\%SD%\uosc" "%MPV_DL%\uosc\scripts\uosc"
    type "%MPV_DL%\uosc.conf" >> "%%d\%SOD%\uosc.conf"
    type "%SSOD%\uosc.conf" >> "%%d\%SOD%\uosc.conf"
)

set "CONFIG_UI_TETHYS=%CONFIG_DIR_STREAM%"

for %%d in (%CONFIG_UI_TETHYS%) do (
    mklink "%%d\%SD%\mpv_thumbnail_script_server.lua" "%MPV_DL%\mpv_thumbnail_script\mpv_thumbnail_script_server.lua"
    mklink "%%d\%SD%\mpv_thumbnail_script_client_osc.lua" "%MPV_DL%\mpv_thumbnail_script\mpv_thumbnail_script_client_osc.lua"
    mklink "%%d\%SD%\osc_tethys.lua" "%MPV_SRC%\mpv-osc-tethys\osc_tethys.lua"
    rem mklink "%%d\%SD%\mpv_thumbnail_script_server.lua" "%MPV_SRC%\mpv-osc-tethys\mpv_thumbnail_script_server.lua"
    mklink "%%d\%SOD%\tethys.conf" "%SSOD%\tethys.conf"
    mklink "%%d\%SOD%\osc.conf" "%SSOD%\osc.conf"
    rem mklink "%%d\%SOD%\mpv_thumbnail_script.conf" "%SSOD%\mpv_thumbnail_script.conf"
    mklink "%%d\%SOD%\autoload.conf" "%SSOD%\autoload.conf"
)

set "CONFIG_VIDEO=%CONFIG_DIR_VIDEO%"

rem mklink "%%d\%SD%\dynamic-crop.lua" "%MPV_SRC%\mpv-scripts@Ashyni\dynamic-crop.lua"

for %%d in (%CONFIG_VIDEO%) do (
    mklink "%%d\%SD%\memo.lua" "%MPV_SRC%\memo\memo.lua"
    rem copy "%MPV_SRC%\memo\memo.conf" "%SSOD%\memo.conf"
    type "%INCLOD%\memo.conf" >> "%%d\mpv.conf"
    mklink "%%d\%SOD%\memo.conf" "%SSOD%\memo.conf"
    mklink "%%d\%SD%\subtitle-lines.lua" "%MPV_SRC%\mpv-subtitle-lines\subtitle-lines.lua"
    mklink "%%d\%SD%\thumbfast.lua" "%MPV_SRC%\thumbfast\thumbfast.lua"
    mklink "%%d\%SOD%\thumbfast.conf" "%MPV_SRC%\thumbfast\thumbfast.conf"
    rem mklink "%%d\%SD%\hold_accelerate.js" "%MPV_DL%\mpv-hold-accelerate\hold_accelerate.js"
    mklink "%%d\%SD%\hold_accelerate.js" "%MPV_SRC%\mpv-hold-accelerate\dist\hold_accelerate.js"
    mklink "%%d\%SOD%\hold_accelerate.conf" "%SSOD%\hold_accelerate.conf"
    mklink "%%d\%SD%\exit-fullscreen.lua" "%MPV_SRC%\mpv-scripts@zc62\exit-fullscreen.lua"
    mklink "%%d\%SD%\fuzzydir.lua" "%MPV_SRC%\mpv-scripts@sibwaf\fuzzydir.lua"
    mklink "%%d\%SD%\format-filename.js" "%MPV_SRC%\mpv-config@Hill-98\scripts\format-filename.js"
    mklink "%%d\%SD%\editions-notification.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\editions-notification.lua"
    mklink "%%d\%SD%\remember-volume.lua" "%MPV_SRC%\remember-volume.lua\remember-volume.lua"
    mklink "%%d\%SD%\autoselect-forced-sub.lua" "%MPV_SRC%\autoselect-forced-sub\autoselect-forced-sub.lua"
    rem copy "%MPV_SRC%\autoselect-forced-sub\afs.conf" "%SSOD%\afs.conf"
    mklink "%%d\%SOD%\afs.conf" "%SSOD%\afs.conf"
    mklink "%%d\%SD%\mpv-sub_not_forced_not_sdh.lua" "%MPV_SRC%\mpv-scripts@pzim-devdata\mpv-sub_not_forced_not_sdh.lua"
    mklink "%%d\%SD%\restore-subtitles.lua" "%MPV_SRC%\mpv-config@zenwarr\scripts\restore-subtitles.lua"
    mklink "%%d\%SD%\dualsubtitles.lua" "%MPV_SRC%\mpv-dualsubtitles\dualsubtitles.lua"
    mklink "%%d\%SOD%\dualsubtitles.conf" "%SSOD%\dualsubtitles.conf"
    mklink "%%d\%SD%\sub_export.lua" "%MPV_SRC%\mpv-scripts@dyphire\sub_export.lua"
    rem copy "%MPV_SRC%\find_subtitles\find_subtitles.lua" "%%d\%SSD%\find_subtitles.lua"
    mklink "%%d\%SD%\find_subtitles.lua" "%SSD%\find_subtitles.lua"
    mklink /J "%%d\%SD%\mpv-subtitle-retimer" "%MPV_SRC%\mpv-subtitle-retimer\src"
    mklink /J "%%d\%SD%\autosubsync-mpv" "%MPV_SRC%\autosubsync-mpv"
    mklink "%%d\%SOD%\autosubsync.conf" "%SSOD%\autosubsync.conf"
    mklink "%%d\%SD%\lang-learner.lua" "%MPV_SRC%\mpv-lang-learner\lang-learner.lua"
    rem copy "%MPV_SRC%\mpv-lang-learner\lang-learner.conf" "%%d\%SD%\lang-learner.conf"
    mklink "%%d\%SOD%\lang-learner.conf" "%SSOD%\lang-learner.conf"
    mklink "%%d\%SD%\mpv_chapters.js" "%MPV_SRC%\mpv-chapters\mpv_chapters.js"
    mklink /J "%%d\%SD%\mpv-open-imdb-page" "%MPV_SRC%\mpv-open-imdb-page"
)

set "CONFIG_STREAM=%CONFIG_DIR_STREAM%"

for %%d in (%CONFIG_STREAM%) do (
    mklink "%%d\%SD%\celebi.lua" "%MPV_SRC%\celebi\celebi.lua"
    rem copy "%MPV_SRC%\celebi\celebi.conf" "%SSOD%\celebi.conf"
    mklink "%%d\%SOD%\celebi.conf" "%SSOD%\celebi.conf"
    mklink "%%d\%SD%\autoload.lua" "%MPV_SRC%\mpv\TOOLS\lua\autoload.lua"
    mklink "%%d\%SOD%\autoload.conf" "%SSOD%\autoload.conf"
    mklink "%%d\%SD%\quality-menu.lua" "%MPV_SRC%\mpv-quality-menu\quality-menu.lua"
    mklink "%%d\%SOD%\quality-menu.conf" "%MPV_SRC%\mpv-quality-menu\quality-menu.conf"
    mklink "%%d\%SD%\appendURL.lua" "%MPV_SRC%\mpv-scripts@jonniek\appendURL.lua"
    mklink "%%d\%SD%\webtorrent.js" "%MPV_SRC%\webtorrent-mpv-hook\build\webtorrent.js"
    mklink "%%d\%SOD%\webtorrent.conf" "%SSOD%\webtorrent.conf"
)

rmdir /S /Q "%HOME%\Opt\mpv_stream"
mkdir "%HOME%\Opt\mpv_stream"
copy "%MPV_OPT%\mpv.exe" "%HOME%\Opt\mpv_stream\mpv.exe"
copy "%MPV_OPT%\mpv.com" "%HOME%\Opt\mpv_stream\mpv.com"
copy "%MPV_OPT%\d3dcompiler_43.dll" "%HOME%\Opt\mpv_stream\d3dcompiler_43.dll"
mklink /J "%HOME%\Opt\mpv_stream\portable_config" "%MPV_SETUP%\_config_dir_stream"

set "CONFIG_EDIT=%CONFIG_DIR_EDIT%"

for %%d in (%CONFIG_EDIT%) do (
    mklink "%%d\%SD%\evafast.lua" "%MPV_SRC%\evafast\evafast.lua"
    rem copy MPV_SRC%\evafast\evafast.conf" "%SSOD%\evafast.conf"
    mklink "%%d\%SOD%\evafast.conf" "%SSOD%\evafast.conf"
    mklink "%%d\%SD%\sub-pause.lua" "%MPV_SRC%\mpv-sub-scripts\sub-pause.lua"
    mklink "%%d\%SD%\sub-skip.lua" "%MPV_SRC%\mpv-sub-scripts\sub-skip.lua"
    mklink "%%d\%SOD%\sub_pause.conf" "%SSOD%\sub_pause.conf"
    mklink "%%d\%SOD%\sub_skip.conf" "%SSOD%\sub_skip.conf"
    mklink "%%d\%SD%\chapters.lua" "%MPV_SRC%\chapters_for_mpv\chapters.lua"
    mklink "%%d\%SD%\mpv_segment_length.lua" "%MPV_SRC%\mpv_segment_length\mpv_segment_length.lua"
    mklink /J "%%d\%SD%\videoclip" "%MPV_SRC%\videoclip"
    mklink "%%d\%SOD%\videoclip.conf" "%SSOD%\videoclip.conf"
    mklink "%%d\%SD%\screenshot-mosaic.js" "%MPV_SRC%\mpv-js-scripts\dist\screenshot-mosaic.js"
    mklink "%%d\%SOD%\screenshot-mosaic.conf" "%SSOD%\screenshot-mosaic.conf"
)

rmdir /S /Q "%MPV_CONFIG%\real_loudnorm"

set "CONFIG_MUSIC=%CONFIG_DIR_MUSIC%"

for %%d in (%CONFIG_MUSIC%) do (
    mklink /J "%%d\%SD%\real_loudnorm" "%MPV_SRC%\mpv-loudnorm"
    mklink "%%d\%SD%\coverart.lua" "%MPV_SRC%\mpv-coverart\coverart.lua"
    rem copy "%MPV_SRC%\mpv-coverart\coverart.conf" "%SSOD%\coverart.conf"
    mklink "%%d\%SOD%\coverart.conf" "%SSOD%\coverart.conf"
    mklink "%%d\%SD%\playlistmanager-save-interactive.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager-save-interactive.lua"
    mklink "%%d\%SOD%\playlistmanager.conf" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf"
    mklink "%%d\%SD%\dualsubtitles.lua" "%MPV_SRC%\mpv-dualsubtitles\dualsubtitles.lua"
    mklink "%%d\%SOD%\dualsubtitles.conf" "%SSOD%\dualsubtitles.conf"
    rem mklink "%%d\%SD%\metadata_osd.lua" "%MPV_SRC%\metadata-osd\scripts\metadata_osd.lua"
    rem rem copy "%MPV_SRC%\metadata-osd\script-opts\metadata_osd.conf" "%%d\%SSOD%\metadata_osd.conf"
    rem mklink "%%d\%SOD%metadata_osd.conf" "%SSOD%\metadata_osd.conf"
)

set "CONFIG_KARAOK=%CONFIG_DIR_KARAOK%"

for %%d in (%CONFIG_KARAOK%) do (
    mklink "%%d\%SD%\smart_volume.lua" "%MPV_SRC%\mpv-scripts@stax76\smart_volume.lua"
)

set "CONFIG_MANGA=%CONFIG_DIR_MANGA%"

for %%d in (%CONFIG_MANGA%) do (
    mklink "%%d\%SD%\memo.lua" "%MPV_SRC%\memo\memo.lua"
    rem copy "%MPV_SRC%\memo\memo.conf" "%SSOD%\memo.conf"
    type "%INCLOD%\memo.conf" >> "%%d\mpv.conf"
    mklink "%%d\%SOD%\memo.conf" "%SSOD%\memo.conf"
    rem mklink "%%d\%SD%\watch_later_osd_menu.lua" "%MPV_SRC%\MPV-Watch-Later-OSD-Menu\watch_later_osd_menu.lua"
    rem rem copy "%MPV_SRC%\MPV-Watch-Later-OSD-Menu\script-opts\watch_later_osd_menu.conf" "%SSOD%\watch_later_osd_menu.conf"
    rem mklink "%%d\%SOD%\watch_later_osd_menu.conf" "%SSOD%\watch_later_osd_menu.conf"
    rem mklink "%%d\%SD%\recent.lua" "%MPV_SRC%\recent\recent.lua"
    rem rem copy "%MPV_SRC%\recent\recent.conf" "%SSOD%\script-opts\recent.conf"
    rem mklink "%%d\%SOD%\recent.conf" "%SSOD%\recent.conf"
    mklink "%%d\%SMD%\gallery.lua" "%MPV_SRC%\mpv-gallery-view\script-modules\gallery.lua"
    mklink "%%d\%SD%\gallery-thumbgen.lua" "%MPV_SRC%\mpv-gallery-view\scripts\gallery-thumbgen.lua"
    mklink "%%d\%SD%\playlist-view.lua" "%MPV_SRC%\mpv-gallery-view\scripts\playlist-view.lua"
    rem copy "%MPV_SRC%\mpv-gallery-view\script-opts\playlist_view.conf" "%SSOD%\playlist_view.conf"
    mklink "%%d\%SOD%\playlist_view.conf" "%SSOD%\playlist_view.conf"
    mklink "%%d\%SD%\manga-reader.lua" "%MPV_SRC%\mpv-manga-reader\manga-reader.lua"
    mklink "%%d\%SD%\freeze-window.lua" "%MPV_SRC%\mpv-image-viewer\scripts\freeze-window.lua"
    mklink "%%d\%SD%\image-positioning.lua" "%MPV_SRC%\mpv-image-viewer\scripts\image-positioning.lua"
    mklink "%%d\%SD%\minimap.lua" "%MPV_SRC%\mpv-image-viewer\scripts\minimap.lua"
    mklink "%%d\%SD%\status-line.lua" "%MPV_SRC%\mpv-image-viewer\scripts\status-line.lua"
    mklink "%%d\%SD%\detect-image.lua" "%MPV_SRC%\mpv-image-viewer\scripts\detect-image.lua"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\image_positioning.conf" "%SSOD%\image_positioning.conf"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\minimap.conf" "%SSOD%\minimap.conf"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\status_line.conf" "%SSOD%\status_line.conf"
    rem copy "%MPV_SRC%\mpv-image-viewer\script-opts\detect_image.conf" "%SSOD%\detect_image.conf"
    mklink "%%d\%SOD%\image_positioning.conf" "%SSOD%\image_positioning.conf"
    mklink "%%d\%SOD%\minimap.conf" "%SSOD%\minimap.conf"
    mklink "%%d\%SOD%\status_line.conf" "%SSOD%\status_line.conf"
    mklink "%%d\%SOD%\detect_image.conf" "%SSOD%\detect_image.conf"
)

set "CONFIG_IMAGE=%CONFIG_DIR_IMAGE%"

for %%d in (%CONFIG_IMAGE%) do (
    mklink "%%d\%SD%\nextfile.lua" "%MPV_SRC%\mpv-nextfile\nextfile.lua"
    mklink "%%d\%SD%\autoloop.lua" "%MPV_SRC%\mpv-scripts@zc62\autoloop.lua"
    mklink "%%d\%SD%\align-images.lua" "%MPV_SRC%\mpv-image-config\scripts\align-images.lua"
    mklink "%%d\%SD%\image-bindings.lua" "%MPV_SRC%\mpv-image-config\scripts\image-bindings.lua"
    rem copy "%MPV_SRC%\mpv-image-config\script-opts\align_images.conf" "%SSOD%\align_images.conf"
    rem copy "%MPV_SRC%\mpv-image-config\script-opts\image_bindings.conf" "%SSOD%\image_bindings.conf"
    mklink "%%d\%SOD%\align_images.conf" "%SSOD%\align_images.conf"
    mklink "%%d\%SOD%\image_bindings.conf" "%SSOD%\image_bindings.conf"
    type "%MPV_SRC%\mpv-image-config\mpv.conf" >> "%%d\mpv.conf"
    type "%MPV_SRC%\mpv-image-config\input.conf" >> "%%d\input.conf"
)

rmdir /S /Q %MPV_CONFIG%
mkdir %MPV_CONFIG%

C:\Users\User\Opt\FastCopy\FastCopy.exe /open_window /auto_close %CONFIG_DIR_VIDEO% /to=%MPV_CONFIG%

pause