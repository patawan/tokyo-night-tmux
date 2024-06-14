#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"

case $SELECTED_THEME in
"storm")
  declare -A THEME=(
    ["background"]="#24283b"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#414868"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#f7768e"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;

"day")
  declare -A THEME=(
    ["background"]="#d5d6db"
    ["foreground"]="#FED142"
    ["black"]="#1E2027"
    ["blue"]="#34548a"
    ["cyan"]="#0f4b6e"
    ["green"]="#33635c"
    ["magenta"]="#5a4a78"
    ["red"]="#8c4351"
    ["white"]="#343b58"
    ["yellow"]="#8f5e15"

    ["bblack"]="#9699a3"
    ["bblue"]="#34548a"
    ["bcyan"]="#0f4b6e"
    ["bgreen"]="#33635c"
    ["bmagenta"]="#5a4a78"
    ["bred"]="#8c4351"
    ["bwhite"]="#343b58"
    ["byellow"]="#8f5815"
  )
  ;;

*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#29315A"
    ["foreground"]="#43CCEA"
    ["black"]="#1E2027"
    ["blue"]="#4F89C4"
    ["cyan"]="#448AB6"
    ["green"]="#5AB977"
    ["magenta"]="#D55119"
    ["red"]="#D95360"
    ["white"]="#E6E5FF"
    ["yellow"]="#DFB563"

    ["bblack"]="#585F6D"
    ["bblue"]="#4F89C4"
    ["bcyan"]="#448AB6"
    ["bgreen"]="#5AB977"
    ["bmagenta"]="#D55119"
    ["bred"]="#D95360"
    ["bwhite"]="#E6E5FF"
    ["byellow"]="#DFB563"
  )
  ;;
esac

THEME['ghgreen']="#5AB977"
THEME['ghmagenta']="#D55119"
THEME['ghred']="#D95360"
THEME['ghyellow']="#DFB563"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
