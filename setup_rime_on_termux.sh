#!/bin/bash

RIME_DATA=$HOME/.local/share/rime-data
RIME_SETUP_DATA=$HOME/Setup/rime
RIME_SRC=$HOME/Source/rime

mkdir -p "$RIME_DATA"

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

ln -s "$RIME_SETUP_DATA/data/default.custom.yaml" "$RIME_DATA/default.custom.yaml"
ln -s "$RIME_SETUP_DATA/data/symbols.yaml" "$RIME_DATA/symbols.yaml"
ln -s "$RIME_SETUP_DATA/data/user.yaml" "$RIME_DATA/user.yaml"
ln -s "$RIME_SETUP_DATA/data/weasel.custom.yaml" "$RIME_DATA/weasel.custom.yaml"
ln -s "$RIME_SETUP_DATA/data/rime-ice/default.yaml" "$RIME_DATA/default.yaml"
ln -s "$RIME_SRC/rime-ice/cn_dicts" "$RIME_DATA/cn_dicts"
ln -s "$RIME_SRC/rime-ice/en_dicts" "$RIME_DATA/en_dicts"
ln -s "$RIME_SRC/rime-ice/lua" "$RIME_DATA/lua"
ln -s "$RIME_SRC/rime-ice/opencc" "$RIME_DATA/opencc"
ln -s "$RIME_SRC/rime-ice/others" "$RIME_DATA/others"
ln -s "$RIME_SRC/rime-ice/custom_phrase.txt" "$RIME_DATA/custom_phrase.txt"
ln -s "$RIME_SRC/rime-ice/melt_eng.dict.yaml" "$RIME_DATA/melt_eng.dict.yaml"
ln -s "$RIME_SRC/rime-ice/melt_eng.schema.yaml" "$RIME_DATA/melt_eng.schema.yaml"
ln -s "$RIME_SRC/rime-ice/rime.lua" "$RIME_DATA/rime.lua"
ln -s "$RIME_SRC/rime-ice/rime_ice.dict.yaml" "$RIME_DATA/rime_ice.dict.yaml"
ln -s "$RIME_SRC/rime-ice/rime_ice.schema.yaml" "$RIME_DATA/rime_ice.schema.yaml"
ln -s "$RIME_SRC/rime-ice/symbols_caps_v.yaml" "$RIME_DATA/symbols_caps_v.yaml"
ln -s "$RIME_SRC/rime-ice/symbols_v.yaml" "$RIME_DATA/symbols_v.yaml"

read -p "Press Enter to continue..."
