my first attempt at dotfile management with stow

# Set up

Install stow and git

```bash
sudo pacman -S git stow
```

Got to the user folder and clone this repo

```bash
cd ~
git clone https://github.com/tallestlegacy/dotfiles
```

Finally, set initialize stow's symlinks to the local setup

```bash
cd ~
cd dotfiles
stow .
```

# Additional dependencies

## Sway config

```bash
yay -S wofi alacritty dunst waybar

# screen sharing
yay -S pipewire xdg-desktop-portal xdg-desktop-portal-wlr
# reboot after installing this
```

## Hyprland config

```bash

# window manager packages
yay -S hyprland hypraper wlogout dunst wofi
```
