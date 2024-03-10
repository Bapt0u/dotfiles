# Dotfiles

Personnal collection of dotfiles. 

## Components

- i3wm 
- polybar
- rofi
- dunst
- alacritty
- zsh
- nitrogen 
- picom
- chezmoi

## Requirements (Ubuntu)

```bash
sudo apt install i3wm rofi polybar kitty nitrogen dunst
```

## Brightness 

In order to adjust screen brightness, add the current user to the group `video`. Logout, login.  

```bash
sudo apt install brightnessctl
sudo adduser $USER video
logout
```
