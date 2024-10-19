#!/usr/bin/env sh

echo "Copying configurations..."

# URxvt config
cp -r $PWD/.config/.Xresources $HOME/.config/.Xresources

# bspwm and sxhkd config
[ ! -d "$HOME/.config/bspwm" ] && mkdir -p $HOME/.config/bspwm/
cp -r $PWD/.config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc

[ ! -d "$HOME/.config/sxhkd" ] && mkdir -p $HOME/.config/sxhkd/
cp -r $PWD/.config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

# polybar config
[ ! -d "$HOME/.config/polybar" ] && mkdir -p $HOME/.config/polybar/scripts
cp -r $PWD/.config/polybar/* $HOME/.config/polybar

# picom config
cp -r $PWD/.config/picom.conf $HOME/.config/picom.conf

# zsh config
cp -r $PWD/.config/.zshrc $HOME/.zshrc
cp -r $PWD/.config/.zshrc $HOME/.config/.zshrc

echo "Installing zsh plugins..."
cp -r  $PWD/scripts/* $HOME/stuff/scripts/

# wallpaper
[ ! -d "$HOME/stuff/pictures/wallpapers" ] && mkdir -p $HOME/stuff/pictures/wallpapers
cp -r $PWD/nord.jpg $HOME/stuff/pictures/wallpapers

bspc wm -r
