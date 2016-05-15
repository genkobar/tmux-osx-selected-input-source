#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

selected_input_source="#($CURRENT_DIR/scripts/osx_selected_input_source.sh)"
selected_input_source_interpolation_string="\#{selected_input_source}"

source "${CURRENT_DIR}/scripts/helpers.sh"

do_interpolation() {
  local string="$1"
  local interpolated="${string/$selected_input_source_interpolation_string/$selected_input_source}"

  echo "$interpolated"
}

update_tmux_option() {
  local option="$1"
  local option_value="$(get_tmux_option "$option")"
  local new_option_value="$(do_interpolation "$option_value")"

  set_tmux_option "$option" "$new_option_value"
}

update_tmux_option "status-right"
update_tmux_option "status-left"
