#!/bin/bash
# Checks if file exist then unbind middle mouse windowmove

mouseM=", mouse:274, movewindow"

file="$HOME/.cache/activeMiddle"
if [ -f $file ]; then
	hyprctl keyword unbind , mouse:274
	rm $file
else
	hyprctl keyword bindm $mouseM
	touch $file
fi 
