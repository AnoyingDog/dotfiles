touch ~/activewindow.txt && rm ~/activewindow.txt
hyprctl activewindow | grep "initialTitle">> ~/activewindow.txt 
cat ~/activewindow.txt | while read OUTPUT; do notify-send "$OUTPUT"; done
cat ~/activewindow.txt | wl-copy
