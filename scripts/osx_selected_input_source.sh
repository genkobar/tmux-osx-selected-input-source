#!/usr/bin/env bash

ja_icon="⦿ "
us_icon="★ "

main() {
  local _input="$(echo $(defaults read com.apple.HIToolbox AppleSelectedInputSources | xargs | cut -d';' -f3 | cut -d'=' -f2))"
  if [ "${_input}" = "Input Mode" -o "${_input}" = "com.apple.inputmethod.Kotoeri" ]; then
    printf "$ja_icon"
  else
    printf "$us_icon"
  fi
}

main
