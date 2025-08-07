1- Install dependencies
sudo pacman -S libinput xdotool wmctrl
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
libinput-gestures-setup autostart

2- Configure Gestures
sudo nvim ~/.config/libinput-gestures.conf

gesture swipe left  3 i3-msg workspace next
gesture swipe right 3 i3-msg workspace prev

3- Add input in group users if its not already in there
sudo gpasswd -a $USER input
newgrp input

4- then restart gestures
libinput-gestures-setup restart

5- lastly add exec command to i3
exec --no-startup-id libinput-gestures-setup start


