LIST= dunst i3 alacritty nvim polybar rofi tmux zsh

.PHONY: all
all:
	stow -R $(LIST)

