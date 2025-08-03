🧩 i3 Window Manager Configuration

This is my personal configuration for the i3 Window Manager, customized for a clean, productive, and minimal tiling experience. It includes integrations with:
	•	🔔 Dunst – lightweight notification daemon
	•	🔍 Rofi – application launcher and window switcher
	•	📊 Polybar – sleek and customizable status bar
	•	💨 Picom – compositor for transparency, shadows, and fading

📁 Directory Structure
<pre>
~/config/
├── i3/           # i3 WM config files
├── dunst/        # Dunst notification styles and settings
├── rofi/         # Rofi themes and launchers
├── polybar/      # Polybar configuration and scripts
└── picom/        # Picom compositor config
</pre>

🚀 Features
	•	✅ Modular and clean i3 configuration
	•	💨 Transparent windows and smooth fading with picom
	•	🎨 Custom rofi themes
	•	🔔 Minimal, transparent dunst notifications
	•	📊 Polybar with modules for workspaces, system stats, and media
	•	🖱️ Keybindings for efficient workflow (launch apps, control volume/brightness, etc.)

🛠️ Requirements

Make sure you have the following installed:
	•	i3 or i3-gaps
	•	dunst
	•	rofi
	•	polybar
	•	picom
	•	feh (for wallpaper setting)
	•	xrandr or autorandr (multi-monitor support, if used)
	•	pavucontrol, pamixer, or pulseaudio (for audio control)
	•	Any additional tools or scripts you’ve added

🔧 Setup Instructions

# Clone this repository
git clone https://github.com/aryaio/config

# Copy the config files
cp -r ~/config/i3
cp -r ~/config/dunst
cp -r ~/config/rofi
cp -r ~/config/polybar
cp -r ~/config/picom.conf


# Restart i3 (Mod+Shift+R)


🎯 Keybindings Overview

Action	Keybinding
Launch Terminal	Mod + Enter
Open Rofi Launcher	Mod + d
Reload i3 Config	Mod + Shift + R
Screenshot	Print
Lock Screen	Mod + Shift + x
Audio Control	XF86Audio...
Brightness Control	XF86MonBrightness...
Toggle Picom (optional script)	Mod + Shift + p

(Edit config in i3 and bind keys/scripts as needed.)

🖼️ Preview

<img width="1920" height="1080" alt="IMG_2101" src="https://github.com/user-attachments/assets/d78b2398-504a-419e-a878-87bcc635e260" />
