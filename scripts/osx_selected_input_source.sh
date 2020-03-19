#!/usr/bin/env bash

ja_icon="あ"
us_icon="🇺🇸"
is_icon="🇮🇸"

main() {
  local _input=$(echo $(defaults read com.apple.HIToolbox AppleSelectedInputSources  \
    | xargs) \
    | tr "[:upper:]" "[:lower:]")

  case $_input in
    *icelandic*)
      printf "$is_icon";;
    *japanese*)
      printf "$ja_icon";;
    *)
      printf "$us_icon";;
  esac
}

main
