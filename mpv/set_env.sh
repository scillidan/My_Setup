#!/bin/bash

HOME="~"

MPV_CONFIG="$HOME/.config/mpv"
MPV_SETUP="$HOME/Github\My_Setup\mpv"
MPV_DL="$HOME/Download/mpv"
MPV_SRC="$HOME/Source/mpv"

IND="input"
INCLD="include"
INCLOD="include-opts"
SD="scripts"
SOD="script-opts"
SMD="script-modules"
SSD="$MPV_SETUP/$SD"
SSOD="$MPV_SETUP/$SOD"

CONFIG_DIR_VIDEO="$MPV_SETUP/_config_dir_video"
CONFIG_DIR_STREAM="$MPV_SETUP/_config_dir_stream"
CONFIG_DIR_MUSIC="$MPV_SETUP/_config_dir_music"
CONFIG_DIR_MANGA="$MPV_SETUP/_config_dir_manga"
CONFIG_DIR_EDIT="$MPV_SETUP/_config_dir_edit"

export DL MPV_SRC MPV_SETUP IND INCLD INCLOD SD SOD SMD SSD SSOD CONFIG_DIR_VIDEO CONFIG_DIR_STREAM CONFIG_DIR_MUSIC CONFIG_DIR_MANGA CONFIG_DIR_EDIT MPV_CONFIG