touch ~/.scripts/activewindow.txt && rm ~/.scripts/activewindow.txt
hyprctl activewindow | grep -E "initialTitle|initialClass" >> ~/.scripts/activewindow.txt 
cat ~/.scripts/activewindow.txt | while read OUTPUT; do notify-send "$OUTPUT"; done
