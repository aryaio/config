# Polybar Setup and Autostart

This guide helps you set up and autostart Polybar using a simple launch script and a `.desktop` autostart entry.

---

## 1. Create the launch script

Create a file called `launch.sh` inside your Polybar config directory:

```bash
~/.config/polybar/launch.sh

---

## 2. Add the following content to the file Note: Replace main and duplicate with the actual names of your Polybar bars as defined in your config.

```bash
#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
polybar duplicate 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
#!/usr/bin/env bash
```

---

## Make the script executable

```bash
chmod +x ~/.config/polybar/launch.sh
```

---

## Setup autostart with .desktop file

```bash
mkdir -p ~/.config/autostart
```
Create a file named polybar.desktop inside ~/.config/autostart/ with the following content:
```bash
[Desktop Entry]
Type=Application
Exec=/home/arya/.config/polybar/launch.sh
Hidden=false
X-MATE-Autostart-enabled=true
Name=Polybar
```
Note: Adjust the Exec path if your username or script location differs.




