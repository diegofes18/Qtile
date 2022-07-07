#!/bin/sh
#!/bin/sh
setxkbmap es &

udiskie -t &

xrandr --output HDMI1 --primary --right-of eDP1 &

nm-applet &

discord

cd .config/qtile
./key.sh

picom --no-vsync &

nitrogen --restore &
