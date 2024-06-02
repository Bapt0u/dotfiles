LIST= dunst i3 kitty nvim picom polybar rofi tmux zsh .zshrc .aliases

.PHONY: all
all:
	stow -R $(LIST)

