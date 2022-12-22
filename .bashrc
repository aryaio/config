#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\n\[${CYAN}\]${debian_chroot:+($debian_chroot)}\u\[${RESET}${BOLD}\] \[${R>
#local ps1="\n$(__mkps1_box_top)$(__mkps1_debian_chroot)$(__mkps1_exitcode)$(__>


powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
export PATH=$PATH:/usr/local/go/bin
