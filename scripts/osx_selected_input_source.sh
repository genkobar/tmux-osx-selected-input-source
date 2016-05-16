#!/usr/bin/env bash

ja_icon="⦿ "
us_icon="★ "

main() {
  local _input=$(echo $(defaults read com.apple.HIToolbox AppleSelectedInputSources  | xargs) | tr "[:upper:]" "[:lower:]")

  case $_input in
    *japanese*)
      printf "$ja_icon";;
    *)
      printf "$us_icon";;
  esac
}

main
