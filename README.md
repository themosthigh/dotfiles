my first attempt at dotfile management with stow

# Set up

Install stow and git

```
sudo pacman -S git stow
```

Got to the user folder and clone this repo

```
cd ~
git clone https://github.com/tallestlegacy/dotfiles
```

Finally, set initialize stow's symlinks to the local setup

```
cd ~
cd dotfiles
stow .
```
