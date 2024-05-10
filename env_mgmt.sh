DOTS=~/.config
NVIM_C=~/.config/nvim/lua/config

if [[ "$(uname -s)" == "Darwin" ]]; then
  val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
  if [[ $val == "Dark" ]]; then
      ln -nfs $DOTS/alacritty/themes/onedark.toml $DOTS/alacritty/themes/active.toml
      ln -nfs $DOTS/tmux/themes/onedark.conf $DOTS/tmux/themes/active.conf
      ln -nfs $NVIM_C/themes/dark.lua $NVIM_C/active_colors.lua
  else
      ln -nfs $DOTS/alacritty/themes/solarized-flat.toml $DOTS/alacritty/themes/active.toml
      ln -nfs $DOTS/tmux/themes/solarized-flat.conf $DOTS/tmux/themes/active.conf
      ln -nfs $NVIM_C/themes/light.lua $NVIM_C/active_colors.lua
  fi
fi

if [[ -z "$TMUX" ]]; then  # if it's undefined
    :  # do nothing
else  # reload tmux
    tmux source-file ~/.config/tmux/tmux.conf
fi

