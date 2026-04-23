# gtklock-config

Meine persönliche [gtklock](https://github.com/jovanlanik/gtklock) Konfiguration für Arch Linux / CachyOS.

## Abhängigkeiten

```bash
sudo pacman -S gtklock grim imagemagick
```

## Installation

```bash
git clone https://github.com/MJ1DerEchte/gtklock-config.git ~/dotfiles/gtklock-config
cd ~/dotfiles/gtklock-config
stow .
```

Oder manuell:

```bash
mkdir -p ~/.config/gtklock
cp .config/gtklock/style.css ~/.config/gtklock/style.css
cp .local/bin/lock.sh ~/.local/bin/lock.sh
chmod +x ~/.local/bin/lock.sh
```

## Verwendung

```bash
~/.local/bin/lock.sh
```

## Lizenz

MIT
