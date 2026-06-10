#
# ~/.zprofile
#

# Only start hyprland if:
# 1. on tty1
# 2. not in a graphical session
# 3. not on TMUX 
if [[ $(tty) = /dev/tty1 ]] && [[ -z $DISPLAY ]] && [[ -z $WAYLAND_DISPLAY ]] && [[ -z $TMUX ]]; then
	exec start-hyprland
fi
