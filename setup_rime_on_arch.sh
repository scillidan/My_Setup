#!/bin/bash

HOME="~"

RIME_DATA=/usr/share/rime-data
RIME_SETUP=$HOME/Github/My_Setup/rime
RIME_DL=$HOME/Download/rime
RIME_SRC=$HOME/Source/rime

rm -f "$RIME_DATA/default.custom.yaml"
rm -f "$RIME_DATA/symbols.yaml"
rm -f "$RIME_DATA/user.yaml"
rm -f "$RIME_DATA/weasel.custom.yaml"
rm -f "$RIME_DATA/default.yaml"
rm -f "$RIME_DATA/custom_phrase.txt"
rm -f "$RIME_DATA/melt_eng.dict.yaml"
rm -f "$RIME_DATA/melt_eng.schema.yaml"
rm -f "$RIME_DATA/rime.lua"
rm -f "$RIME_DATA/rime_ice.dict.yaml"
rm -f "$RIME_DATA/rime_ice.schema.yaml"
rm -f "$RIME_DATA/symbols_caps_v.yaml"
rm -f "$RIME_DATA/symbols_v.yaml"
rm -rf "$RIME_DATA/cn_dicts"
rm -rf "$RIME_DATA/en_dicts"
rm -rf "$RIME_DATA/lua"
rm -rf "$RIME_DATA/opencc"
rm -rf "$RIME_DATA/others"

ln -s "$RIME_DATA/default.custom.yaml" "$RIME_SETUP/data/default.custom.yaml"
ln -s "$RIME_DATA/symbols.yaml" "$RIME_SETUP/data/symbols.yaml"
ln -s "$RIME_DATA/user.yaml" "$RIME_SETUP/data/user.yaml"
ln -s "$RIME_DATA/weasel.custom.yaml" "$RIME_SETUP/data/weasel.custom.yaml"
ln -s "$RIME_DATA/default.yaml" "$RIME_SETUP/data/rime-ice/default.yaml"
ln -s "$RIME_DATA/cn_dicts" "$RIME_SRC/rime-ice/cn_dicts"
ln -s "$RIME_DATA/en_dicts" "$RIME_SRC/rime-ice/en_dicts"
ln -s "$RIME_DATA/lua" "$RIME_SRC/rime-ice/lua"
ln -s "$RIME_DATA/opencc" "$RIME_SRC/rime-ice/opencc"
ln -s "$RIME_DATA/others" "$RIME_SRC/rime-ice/others"
ln -s "$RIME_DATA/custom_phrase.txt" "$RIME_SRC/rime-ice/custom_phrase.txt"
ln -s "$RIME_DATA/melt_eng.dict.yaml" "$RIME_SRC/rime-ice/melt_eng.dict.yaml"
ln -s "$RIME_DATA/melt_eng.schema.yaml" "$RIME_SRC/rime-ice/melt_eng.schema.yaml"
ln -s "$RIME_DATA/rime.lua" "$RIME_SRC/rime-ice/rime.lua"
ln -s "$RIME_DATA/rime_ice.dict.yaml" "$RIME_SRC/rime-ice/rime_ice.dict.yaml"
ln -s "$RIME_DATA/rime_ice.schema.yaml" "$RIME_SRC/rime-ice/rime_ice.schema.yaml"
ln -s "$RIME_DATA/symbols_caps_v.yaml" "$RIME_SRC/rime-ice/symbols_caps_v.yaml"
ln -s "$RIME_DATA/symbols_v.yaml" "$RIME_SRC/rime-ice/symbols_v.yaml"

read -p "Press Enter to continue..."