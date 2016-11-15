xrandr --setprovideroutputsource 1 0
xrandr --output VGA-1 --left-of DVI-I-1 --auto
xrandr --auto
feh --bg-scale ~/Downloads/wish.png
xrdb -merge ~/.Xresources
exec i3
