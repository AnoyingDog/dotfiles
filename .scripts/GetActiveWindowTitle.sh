touch ~/activewindow.txt && rm ~/.scripts/activewindow.txt
hyprctl activewindow | grep "initialTitle">> ~/.scripts/activewindow.txt 
cat ~/activewindow.txt | while read OUTPUT; do notify-send "$OUTPUT"; done
cat ~/activewindow.txt | wl-copy
