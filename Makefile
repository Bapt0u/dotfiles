LIST= dunst i3 kitty nvim picom polybar rofi tmux zsh

.PHONY: all
all:
	stow -R $(LIST)

