#!/bin/bash

system_info () {
    DOTS=~/.config  # as default to be overridden

    if [[ "$(uname -s)" == "Darwin" ]]; then
        OS="mac"
    elif [[ "$(uname -s)" == "Linux" ]]; then
        OS="linux"
        device=$(tr -d '\0' < /sys/firmware/devicetree/base/model)
        if [[ $device =~ "Raspberry Pi" ]]; then
            DOTS=~/Repos/dotfiles
        fi
    else
        echo "Are you lost?"
        exit 1
    fi
    NVIM_C=$DOTS/nvim/lua/config
}

dark_mode () {
  ln -nfs $DOTS/alacritty/themes/onedark.toml $DOTS/alacritty/themes/active.toml
  ln -nfs $DOTS/tmux/themes/onedark.conf $DOTS/tmux/themes/active.conf
  ln -nfs $NVIM_C/themes/dark.lua $NVIM_C/active_colors.lua
  # note that zellij will only pick up for new sessions
  ln -nfs $DOTS/zellij/config-dark.kdl $DOTS/zellij/config.kdl 
  update_tmux
}

light_mode () {
  ln -nfs $DOTS/alacritty/themes/onedark-light.toml $DOTS/alacritty/themes/active.toml
  ln -nfs $DOTS/tmux/themes/solarized-flat.conf $DOTS/tmux/themes/active.conf
  ln -nfs $NVIM_C/themes/light.lua $NVIM_C/active_colors.lua
  # note that zellij will only pick up for new sessions
  ln -nfs $DOTS/zellij/config-light.kdl $DOTS/zellij/config.kdl 
  update_tmux
}

update_tmux () {
    if [ -n "$TMUX" ]; then
        tmux source-file $DOTS/tmux/tmux.conf
    fi
}

# main loop
system_info

if [ $# -eq 0 ]; then
    # automagic for macs if no args
    if [[ "$OS" == "mac" ]]; then
      val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
      if [[ $val == "Dark" ]]; then
          dark_mode
      else
          light_mode
      fi
    else
        echo "Can't determine system appearance; please provide manually"
    fi
elif [ "$1" == "dark" ]; then
    dark_mode
elif [ "$1" == "light" ]; then
    light_mode
else
    echo "Invalid argument; please choose 'light' or 'dark'"
    exit 1
fi
