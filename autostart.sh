#!/bin/sh
#!/bin/sh
setxkbmap es &

udiskie -t &

cd .config/qtile
./key.sh

nm-applet &

nitrogen --restore &

python ~/.config/qtile/themedetect.py > ~/.config/qtile/treal.txt
result=$(< ~/.config/qtile/treal.txt)


#background wallpaper

if [ "$result" == "onedark" ]; then
    feh --bg-fill --randomize ~/Wallpapers/onedark
fi

if [ "$result" == "material-ocean" ]; then
    feh --bg-fill --randomize ~/Wallpapers/material
fi

if [ "$result" == "jungle" ]; then
    feh --bg-fill --randomize ~/Wallpapers/jungle
fi

if [ "$result" == "nord" ]; then
    feh --bg-fill --randomize ~/Wallpapers/nord
fi

if [ "$result" == "dracula" ]; then
    feh --bg-fill --randomize ~/Wallpapers/dracula
fi