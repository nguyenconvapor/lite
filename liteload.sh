#!/bin/bash

# Đường dẫn đến thư mục chứa các script Python
script_dir="/root/lite"

# Vòng lặp để chạy từng script
for i in {1..12}; do
    gnome-terminal --tab --title "Lite $i" -- bash -c "cd $script_dir; python3 lite$i.py; exec bash" &
done