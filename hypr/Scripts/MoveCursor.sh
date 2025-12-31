# 
# This script will move your cursor
# use bind = $mainMod, left, exec, ../MoveCursor.sh to Left
# Where Left may be:
# - Left
# - Up
# - Down
# - Right

x=$(hyprctl cursorpos | cut -d ',' -f1)
y=$(hyprctl cursorpos | cut -d ',' -f2)

# String to integer
x=$((x + 0))
y=$((y + 0))

long=4

# Encrase coors.
ex=$((x + "$long"))
ey=$((y + "$long"))

# Decrase coors.
dx=$((x - "$long"))
dy=$((y - "$long"))

if [[ "$1" == "to" ]]; then
  if   [[ "$2" == "Left" ]]; then
	hyprctl dispatch movecursor "$dx" "$y"
  elif [[ "$2" == "Down" ]]; then
	hyprctl dispatch movecursor "$x" "$ey" 
  elif [[ "$2" == "Up" ]]; then
	hyprctl dispatch movecursor "$x" "$dy" 
  elif [[ "$2" == "Right" ]]; then
	hyprctl dispatch movecursor "$ex" "$y"
  fi
fi
