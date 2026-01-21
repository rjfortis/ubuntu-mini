#!/bin/bash

# 2 rows (3x3 terminals)

i3-msg "exec alacritty"
sleep 0.2
i3-msg "exec alacritty"
sleep 0.2
i3-msg "exec alacritty"
sleep 0.2
i3-msg "split v"
i3-msg "exec alacritty"
sleep 0.2
i3-msg focus left
i3-msg "split v"
i3-msg "exec alacritty"
sleep 0.2
i3-msg focus left
i3-msg "split v"
i3-msg "exec alacritty"
