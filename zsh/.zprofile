# Only start hyprland if:
# 1. on tty1
# 2. not in a graphical session
# 3. not on TMUX
# 4. uwsm may start
if [[ $(tty) = /dev/tty1 ]] && [[ -z $DISPLAY ]] && [[ -z $WAYLAND_DISPLAY ]] && [[ -z $TMUX ]] && uwsm check may-start; then
	exec uwsm start hyprland.desktop
fi
