# Auto-screen-xrandr

Save configuration from arandr into `~/.screenlayout` with name give by `hwinfo --monitor --short`

Add this in bspwmrc
```sh
external=$(xrandr --query | grep 'DisplayPort-0' | grep 'disconnected')
if [[ "$external" == *'disconnected'* ]] ; then
    echo "No external monitor detected"
    ~/.screenlayout/change_screen.sh 1
else
    echo "External monitor in use"
    ~/.screenlayout/change_screen.sh 2
fi
```