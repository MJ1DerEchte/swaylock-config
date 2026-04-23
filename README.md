# swaylock-config

Meine persönliche [swaylock](https://github.com/swaywm/swaylock) Konfiguration für Arch Linux.

## Vorschau

> Catppuccin Mocha Farbschema 🌙

## Abhängigkeiten

```bash
# Offiziell
sudo pacman -S swaylock

# Oder mit Effects-Support (empfohlen)
puru -S swaylock-effects

# Screenshot-Tool
sudo pacman -S grim
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

## Lock-Script

Das Script macht automatisch einen Screenshot, lockt den Bildschirm mit Blur-Effekt und löscht das Bild danach wieder.

### Script erstellen

```bash
nano ~/.local/bin/lock.sh
```

Folgenden Inhalt einfügen:

```bash
#!/bin/bash
# Screenshot vom aktuellen Bildschirm machen
grim /tmp/lockscreen.png

# Bildschirm locken mit Blur
swaylock

# Nach dem Unlock das Bild wieder löschen
rm -f /tmp/lockscreen.png
```

Speichern: `Strg + O` → Enter → `Strg + X`

### Script ausführbar machen

```bash
chmod +x ~/.local/bin/lock.sh
```

> Kein Output = kein Fehler = hat funktioniert! ✅

### Script ausführen

```bash
~/.local/bin/lock.sh
```

## Sway Integration

In die `~/.config/sway/config` einfügen:

```
# Manueller Lock mit Script
bindsym $mod+l exec ~/.local/bin/lock.sh

# Automatischer Lock mit swayidle
exec swayidle -w \
    timeout 300 'grim /tmp/lockscreen.png && swaylock && rm -f /tmp/lockscreen.png' \
    timeout 600 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' \
    before-sleep 'grim /tmp/lockscreen.png && swaylock -f && rm -f /tmp/lockscreen.png'
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
