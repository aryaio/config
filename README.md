<img width="1920" height="1080" alt="IMG_2101" src="https://github.com/user-attachments/assets/d78b2398-504a-419e-a878-87bcc635e260" />

# 🧩 i3 Window Manager Configuration

This is my personal configuration for the **i3 Window Manager**, tailored for a clean, minimal, and productive desktop experience. The setup combines key lightweight Linux tools to create a fully featured tiling window environment, including:

- 🔔 [Dunst](https://github.com/dunst-project/dunst) – for notifications
- 🔍 [Rofi](https://github.com/davatorium/rofi) – for launching applications and switching windows
- 📊 [Polybar](https://github.com/polybar/polybar) – for a modular status bar
- 💨 [Picom](https://github.com/yshui/picom) – for transparency, shadows, and fading effects

All configuration files are modular and easy to modify, making this setup ideal for power users and minimalists alike.


📁 Directory Structure
<pre>
~/config/
├── i3/           # i3 WM config files
├── dunst/        # Dunst notification styles and settings
├── rofi/         # Rofi themes and launchers
├── polybar/      # Polybar configuration and scripts
└── picom/        # Picom compositor config
</pre>

## 🚀 Features

- 🧩 **Modular configuration** – All components are separated for easier customization
- 💨 **Compositor with Picom** – Smooth fading, window transparency, and shadow effects
- 🔍 **Rofi launcher** – Fast app and window switching with custom themes
- 🔔 **Dunst notifications** – Minimal, styled notification popups with urgency hints
- 📊 **Polybar integration** – Dynamic bar showing workspaces, media, system stats, and more
- 🎯 **Custom keybindings** – Efficient navigation, window control, media, and brightness shortcuts
- 🌄 **Wallpaper support** – Uses `feh` for setting static wallpapers
- 🌓 **Light/Dark mode friendly** – Easily theme your tools consistently
- 🖥️ **Multi-monitor support** – Works with `xrandr` or `autorandr`

## 🛠️ Requirements

Before using this setup, ensure you have the following software installed:

### Core Components

- `i3` or `i3-gaps` – the window manager
- `rofi` – application launcher and dmenu replacement
- `dunst` – lightweight notification daemon
- `polybar` – customizable status bar
- `picom` – compositor for window effects (blur, transparency, etc.)

### Supporting Tools

- `feh` – used to set wallpapers
- `xrandr` or `autorandr` – for monitor management
- `pavucontrol`, `pamixer`, or `pulseaudio` – for audio controls
- `playerctl` – media key integration with Polybar (optional)
- `i3lock` or `i3lock-color` – lock screen (optional)

You can install most of these with your distro's package manager. For example:

```bash
# On Debian/Ubuntu
sudo apt install i3 rofi dunst polybar picom feh pulseaudio-utils playerctl

# On Arch Linux
sudo pacman -S i3-gaps rofi dunst polybar picom feh pulseaudio playerctl
```



## 🎯 Keybindings Overview

| Action                  | Keybinding                  |
|-------------------------|-----------------------------|
| Launch Terminal         | `Mod + Enter`               |
| Open Rofi Launcher      | `Mod + d`                   |
| Reload i3 Config        | `Mod + Shift + r`           |
| Lock Screen             | `Mod + Shift + x`           |
| Screenshot              | `Print`                     |
| Audio Volume Up/Down    | `XF86AudioRaise/LowerVolume` |
| Mute Audio              | `XF86AudioMute`             |
| Brightness Up/Down      | `XF86MonBrightnessUp/Down`  |
| Toggle Picom (optional) | `Mod + Shift + p`           |
| Kill Focused Window     | `Mod + Shift + q`           |
| Move Focus (hjkl)       | `Mod + [h/j/k/l]`            |
| Resize Window (hjkl)    | `Mod + Ctrl + [h/j/k/l]`     |

(Edit config in i3 and bind keys/scripts as needed.)


