# Touchpad Gestures for i3 Window Manager

Enable **3-finger swipe gestures** to switch workspaces in the [i3](https://i3wm.org/) window manager using [`libinput-gestures`](https://github.com/bulletmark/libinput-gestures).

This guide is tailored for **Arch-based systems** using `pacman`.

---

## Dependencies

Install the required packages:

```bash
sudo pacman -S libinput xdotool wmctrl
```

---

## Installation

Clone and install `libinput-gestures`:

```bash
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
```

Enable autostart:

```bash
libinput-gestures-setup autostart
```

---

## Configure Gestures

Create or edit the configuration file:

```bash
mkdir -p ~/.config
nvim ~/.config/libinput-gestures.conf
```

Example: 3-finger swipe gestures to switch i3 workspaces:

```conf
gesture swipe left  3 i3-msg workspace next
gesture swipe right 3 i3-msg workspace prev
```

Save and close.

---

## Add User to Input Group

Ensure your user is in the `input` group:

```bash
sudo gpasswd -a $USER input
newgrp input
```

---

## Restart the Gesture Daemon

Apply changes:

```bash
libinput-gestures-setup restart
```

To debug gestures:

```bash
libinput-gestures -d
```

---

## Autostart with i3

Edit your i3 config (`~/.config/i3/config`) and add:

```bash
exec --no-startup-id libinput-gestures-setup start
```

Then reload i3:

```bash
Mod + Shift + R
```

---

## You're All Set!

You can now switch workspaces with 3-finger swipes:

- **Swipe left** → go to the next workspace  
- **Swipe right** → go to the previous workspace  

Bonus: Combine with [`picom`](https://github.com/yshui/picom) for smooth fade animations.

---

## 🧼 Uninstall

To remove `libinput-gestures`:

```bash
libinput-gestures-setup stop
sudo make uninstall
```

---

## 📄 License

This guide is based on the [libinput-gestures](https://github.com/bulletmark/libinput-gestures) project (MIT License).
