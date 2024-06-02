# Dotfiles

Personnal collection of dotfiles managed by GNU Stow.

## Components

- i3wm 
- polybar
- rofi
- dunst
- kitty 
- zsh
- nitrogen 
- picom
- stow

## Requirements (Ubuntu)

```bash
sudo apt install i3wm rofi polybar kitty nitrogen dunst stow
```

## Brightness 

In order to adjust screen brightness, add the current user to the group `video`. Logout, login.  

```bash
sudo apt install brightnessctl
sudo adduser $USER video
logout
```

## Tmux

Install the Tmux Plugin Manager

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

