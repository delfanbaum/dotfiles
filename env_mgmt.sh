DOTS=~/.config

if [[ "$(uname -s)" == "Darwin" ]]; then
  val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
  if [[ $val == "Dark" ]]; then
      ln -nfs $DOTS/alacritty/themes/onedark.toml $DOTS/alacritty/themes/active.toml
      ln -nfs $DOTS/tmux/themes/onedark.conf $DOTS/tmux/themes/active.conf
  else
      ln -nfs $DOTS/alacritty/themes/solarized-flat.toml $DOTS/alacritty/themes/active.toml
      ln -nfs $DOTS/tmux/themes/solarized-flat.conf $DOTS/tmux/themes/active.conf
  fi
fi
