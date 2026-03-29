LIST= dunst i3 alacritty nvim polybar rofi tmux zsh scripts

.PHONY: all
all:
	stow -R $(LIST)
	systemctl --user daemon-reload
	systemctl --user enable --now battery-check.timer

