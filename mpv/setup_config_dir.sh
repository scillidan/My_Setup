# TBD

#!/bin/bash

source "$(dirname "$0")/set_env.sh"

CONFIG_DIR_ALL=("$CONFIG_DIR_GLOBAL" "$CONFIG_DIR_VIDEO" "$CONFIG_DIR_STREAM" "$CONFIG_DIR_EDIT" "$CONFIG_DIR_MUSIC" "$CONFIG_DIR_MANGA")

for d in "${CONFIG_DIR_ALL[@]}"; do
    rm -rf "$d"
    mkdir -p "$d/$SD"
    mkdir -p "$d/$SOD"
    mkdir -p "$d/$SMD"
done

cat "$INCLD/_osd.conf" "$INCLOD/uosc.conf" "$INCLD/_hdr.conf" "$INCLD/video.conf" "$INCLD/_watch-later.conf" "$INCLD/_subtitle.conf" "$INCLD/_screenshot.conf" "$INCLOD/inputevent.conf" > "$CONFIG_DIR_VIDEO/mpv.conf"
cat "$INCLD/_osd.conf" "$INCLOD/uosc.conf" "$INCLD/_hdr.conf" "$INCLD/video.conf" "$INCLD/_watch-later.conf" "$INCLD/_subtitle.conf" "$INCLD/_screenshot.conf" "$INCLOD/inputevent.conf" > "$CONFIG_DIR_STREAM/mpv.conf"
cat "$INCLD/_osd.conf" "$INCLOD/uosc.conf" "$INCLD/_hdr.conf" "$INCLD/music.conf" "$INCLD/_subtitle.conf" "$INCLOD/inputevent.conf" > "$CONFIG_DIR_MUSIC/mpv.conf"
cat "$INCLD/_osd.conf" "$INCLD/_hdr.conf" "$INCLD/manga.conf" "$INCLD/_watch-later.conf" "$INCLOD/inputevent.conf" > "$CONFIG_DIR_MANGA/mpv.conf"
cat "$INCLD/_osd.conf" "$INCLOD/uosc.conf" "$INCLD/_hdr.conf" "$INCLD/video.conf" "$INCLD/_watch-later.conf" "$INCLD/_subtitle.conf" "$INCLD/_screenshot.conf" "$INCLOD/inputevent.conf" > "$CONFIG_DIR_EDIT/mpv.conf"

cat "$IND/_global.conf" "$IND/_test.conf" "$IND/video.conf" > "$CONFIG_DIR_VIDEO/input.conf"
cat "$IND/_global.conf" "$IND/_test.conf" "$IND/stream.conf" > "$CONFIG_DIR_STREAM/input.conf"
cat "$IND/_global.conf" "$IND/_test.conf" "$IND/music.conf" > "$CONFIG_DIR_MUSIC/input.conf"
cat "$IND/_global.conf" "$IND/_test.conf" "$IND/manga.conf" > "$CONFIG_DIR_MANGA/input.conf"
cat "$IND/_global.conf" "$IND/_test.conf" "$IND/edit.conf" > "$CONFIG_DIR_EDIT/input.conf"

# rm "$MPV_CONFIG/pip-tool.exe"
# ln -s "$DL/mpv-pip/pip-tool.exe" "$MPV_CONFIG/pip-tool.exe"
rm -rf "$MPV_CONFIG/real_loudnorm"

LINK_GLOBAL=("$CONFIG_DIR_VIDEO" "$CONFIG_DIR_STREAM" "$CONFIG_DIR_MUSIC" "$CONFIG_DIR_EDIT")

for d in "${LINK_GLOBAL[@]}"; do
    ln -s "$MPV_SETUP/$INCLD" "$d/$INCLD"
    ln -s "$DL/uosc/scripts/uosc" "$d/$SD/uosc"
    cp -r "$DL/uosc/fonts/." "/usr/local/share/fonts/"
    cat "$DL/uosc.conf" > "$d/$SOD/uosc.conf"
    ln -s "$MPV_SRC/mpv-scripts@cogentredtester/show-errors.lua" "$d/scripts/show-errors.lua"
done

LINK_VIDEO=("$CONFIG_DIR_VIDEO" "$CONFIG_DIR_STREAM" "$CONFIG_DIR_EDIT")

for d in "${LINK_VIDEO[@]}"; do
    cat "$SSD/mpv-cheatsheet_01.js" "$SSD/mpv-cheatsheet_02.js" "$SSD/mpv-cheatsheet_03_video.js" "$SSD/mpv-cheatsheet_04.js" > "$d/$SD/mpv-cheatsheet.js"
    ln -s "$MPV_SRC/hdr-toys/scripts/hdr-toys-helper.lua" "$d/$SD/hdr-toys-helper.lua"
    cat "$SSOD/hdr-toys.conf" >> "$d/mpv.conf"
    ln -s "$MPV_SRC/memo/memo.lua" "$d/$SD/memo.lua"
    cat "$MPV_SRC/memo/memo.conf" "$INCLOD/memo.conf" > "$d/$SOD/memo.conf"
    ln -s "$MPV_SRC/input-event/inputevent.lua" "$d/$SD/inputevent.lua"
    ln -s "$MPV_SRC/evafast/evafast.lua" "$d/$SD/evafast.lua"
    ln -s "$MPV_SRC/evafast/evafast.conf" "$d/$SOD/evafast.conf"
    ln -s "$MPV_SRC/thumbfast/thumbfast.lua" "$d/$SD/thumbfast.lua"
    ln -s "$MPV_SRC/thumbfast/thumbfast.conf" "$d/$SOD/thumbfast.conf"
    ln -s "$MPV_SRC/remember-volume.lua/rememeber-voluma.lua" "$d/$SD/rememeber-voluma.lua"
    ln -s "$MPV_SRC/mpv/TOOLS/lua/ontop-playback.lua" "$d/$SD/ontop-playback.lua"
    ln -s "$MPV_SRC/mpv-scripts@zenyd/delete_file.lua" "$d/$SD/delete_file.lua"
    ln -s "$SSD/pip.lua" "$d/$SD/pip.lua"
    ln -s "$MPV_SRC/mpv-scripts@sibwaf/fuzzydir.lua" "$d/$SD/fuzzydir.lua"
    ln -s "$MPV_SRC/mpv-loudnorm" "$d/$SD/real_loudnorm"
    # ln -s "$MPV_SRC/mpv-switch-both-audio/switch-both-audio.lua" "$d/$SD/switch-both-audio.lua"
    # ln -s "$MPV_SRC/audio-dupe.lua/audio-dupe.lua" "$d/$SD/audio-dupe.lua"
    # ln -s "$MPV_SRC/cycle-adevice.lua/cycle-adevice.lua.lua" "$d/$SD/cycle-adevice.lua.lua"
done

LINK_STREAM=$CONFIG_DIR_STREAM

for d in "${LINK_STREAM[@]}"; do
    cat "$SSD/mpv-cheatsheet_01.js" "$SSD/mpv-cheatsheet_02.js" "$SSD/mpv-cheatsheet_03_stream.js" "$SSD/mpv-cheatsheet_04.js" > "$d/$SD/mpv-cheatsheet.js"
    ln -s "$MPV_SRC/mpv-quality-menu/quality-menu-osc.lua" "$d/$SD/quality-menu-osc.lua"
    ln -s "$MPV_SRC/mpv-quality-menu/quality-menu.conf" "$d/$SOD/quality-menu.conf"
    ln -s "$MPV_SRC/mpv-scripts@jonniek/appendURL.lua" "$d/$SD/appendURL.lua"
    ln -s "$MPV_SRC/mpv-scripts@sibwaf/reload.lua" "$d/$SD/reload.lua"
    ln -s "$HOME/.local/share/pnpm/webtorrent-mpv-hook/build/webtorrent.js" "$d/$SD/webtorrent.js"
    ln -s "$SSOD/webtorrent.conf" "$d/$SOD/webtorrent.conf"
done

LINK_MUSIC=$CONFIG_DIR_MUSIC

for d in "${LINK_MUSIC[@]}"; do
    cat "$SSD/mpv-cheatsheet_01.js" "$SSD/mpv-cheatsheet_02.js" "$SSD/mpv-cheatsheet_03_music.js" "$SSD/mpv-cheatsheet_04.js" > "$d/$SD/mpv-cheatsheet.js"
    # ln -s "$MPV_SRC/remember-volume.lua/rememeber-voluma.lua" "$d/$SD/rememeber-voluma.lua"
    # ln -s "$SSD/smart_volume.lua" "$d/$SD/smart_volume.lua"
    ln -s "$SSD/pip.lua" "$d/$SD/pip.lua"
    ln -s "$SSD/navigator.lua" "$d/$SD/navigator.lua"
    ln -s "$MPV_SRC/mpv-playlistmanager/playlistmanager.lua" "$d/$SD/playlistmanager.lua"
    ln -s "$MPV_SRC/mpv-playlistmanager/playlistmanager-save-interactive.lua" "$d/$SD/playlistmanager-save-interactive.lua"
    ln -s "$MPV_SRC/mpv-playlistmanager/playlistmanager.conf" "$d/$SOD/playlistmanager.conf"
    ln -s "$MPV_SRC/mpv-scripts@sibwaf/reload.lua" "$d/$SD/reload.lua"
    ln -s "$MPV_SRC/save-playlist/save-playlist.lua" "$d/$SD/save-playlist.lua"
    ln -s "$MPV_SRC/mpv-scripts_stax76/average_volume.lua" "$d/$SD/average_volume.lua"
    # ln -s "$MPV_SRC/mpv-scripts@sibwaf/fuzzydir.lua" "$d/$SD/fuzzydir.lua"
    # ln -s "$MPV_SRC/remember_audio_geometry/remember_audio_geometry.lua" "$d/$SD/remember_audio_geometry.lua"
    ln -s "$MPV_SRC/mpv-lrc/lrc.lua" "$d/$SD/lrc.lua"
    ln -s "$MPV_SRC/mpv-lrc/scripts-opts/lrc.conf" "$d/$SOD/lrc.conf"
done

LINK_MANGA=$CONFIG_DIR_MANGA

for d in "${LINK_MANGA[@]}"; do
    cat "$SSD/mpv-cheatsheet_01.js" "$SSD/mpv-cheatsheet_02.js" "$SSD/mpv-cheatsheet_03_manga.js" "$SSD/mpv-cheatsheet_04.js" > "$d/$SD/mpv-cheatsheet.js"
    ln -s "$MPV_SRC/mpv-gallery-view/scripts/gallery-thumbgen.lua" "$d/$SD/gallery-thumbgen.lua"
    ln -s "$MPV_SRC/mpv-gallery-view/script-modules/gallery.lua" "$d/$SMD/gallery.lua"
    ln -s "$MPV_SRC/mpv-gallery-view/script-opts/playlist-view.lua" "$d/$SD/playlist-view.lua"
    # ln -s "$SSD/playlist-view.lua" "$d/$SD/playlist-view.lua"
    ln -s "$SSOD/playlist_view.conf" "$d/$SOD/playlist_view.conf"
    ln -s "$MPV_SRC/mpv-gallery-view/scripts-opts/gallery_worker.conf" "$d/$SOD/gallery_worker.conf"
    ln -s "$MPV_SRC/mpv-manga-reader/manga-reader.lua" "$d/$SD/manga-reader.lua"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/image-positioning.lua" "$d/$SD/image-positioning.lua"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/scripts-opts/image-positioning.conf" "$d/$SOD/image-positioning.conf"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/freeze-window.lua" "$d/$SD/freeze-window.lua"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/scripts-opts/freeze-window.conf" "$d/$SOD/freeze-window.conf"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/detect-image.lua" "$d/$SD/detect-image.lua"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/scripts-opts/detect-image.conf" "$d/$SOD/detect-image.conf"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/minimap.lua" "$d/$SD/minimap.lua"
    ln -s "$MPV_SRC/mpv-image-viewer/scripts/scripts-opts/minimap.conf" "$d/$SOD/minimap.conf"
done

LINK_EDIT=$CONFIG_DIR_EDIT

for d in "${LINK_EDIT[@]}"; do
    cat "$SSD/mpv-cheatsheet_01.js" "$SSD/mpv-cheatsheet_02.js" "$SSD/mpv-cheatsheet_03_edit.js" "$SSD/mpv-cheatsheet_04.js" > "$d/$SD/mpv-cheatsheet.js"
    ln -s "$MPV_SRC/chapters_for_mpv/chapters.lua" "$d/$SD/chapters.lua"
    ln -s "$MPV_SRC/chapters_for_mpv/scripts-opts/chapters.conf" "$d/$SOD/chapters.conf"
    ln -s "$MPV_SRC/mpv-subtitle-lines/subtitle-lines.lua" "$d/$SD/subtitle-lines.lua"
    ln -s "$MPV_SRC/mpv-sub-scripts/sub-pause.lua" "$d/$SD/sub-pause.lua"
    ln -s "$MPV_SRC/mpv-sub-scripts/sub-skip.lua" "$d/$SD/sub-skip.lua"
    # ln -s "$MPV_SRC/mpv-scripts@eisa01/scripts/SimpleBookmark.lua" "$d/$SD/SimpleBookmark.lua"
    # ln -s "$MPV_SRC/mpv-scripts@eisa01/scripts-opts/SimpleBookmark.conf" "$d/$SOD/SimpleBookmark.conf"
done

read -p "Press Enter to exit..."