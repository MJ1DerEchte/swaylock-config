# swaylock-config

Meine persönliche [swaylock](https://github.com/swaywm/swaylock) Konfiguration für Arch Linux.

## Vorschau

> Catppuccin Mocha Farbschema 🌙

## Abhängigkeiten

```bash
# Offiziell
sudo pacman -S swaylock

# Oder mit Effects-Support (empfohlen)
yay -S swaylock-effects
```

## Installation

Dieses Repository ist mit [GNU stow](https://www.gnu.org/software/stow/) kompatibel.

```bash
# Repo klonen
git clone https://github.com/MJ1DerEchte/swaylock-config.git ~/dotfiles/swaylock-config

# Mit stow verlinken
cd ~/dotfiles/swaylock-config
stow .
```

Oder manuell:

```bash
mkdir -p ~/.config/swaylock
cp .config/swaylock/config ~/.config/swaylock/config
```

## Hintergrundbild

Ein Bild unter `~/.config/swaylock/lockscreen.png` ablegen, oder in der Config den `image=` Eintrag auf deinen gewünschten Pfad anpassen.

## Sway Integration

In die `~/.config/sway/config` einfügen:

```
# Manueller Lock
bindsym $mod+l exec swaylock

# Automatischer Lock mit swayidle
exec swayidle -w \
    timeout 300 'swaylock -f' \
    timeout 600 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' \
    before-sleep 'swaylock -f'
```

## Farbschema

| Farbe | Hex | Verwendung |
|-------|-----|------------|
| Mauve | `#cba6f7` | Ring (normal) |
| Green | `#a6e3a1` | Ring (erfolgreich) |
| Peach | `#fab387` | Caps Lock |
| Blue  | `#89b4fa` | Ring (Verifizierung) |
| Red   | `#f38ba8` | Ring (Fehler) |
| Text  | `#cdd6f4` | Standard Text |

## Lizenz

MIT
