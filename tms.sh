#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/Documents/stefan_stuff ~/Documents/work -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new -d -s $selected_name -n nvim -c $selected
    tmux send-keys -t $selected_name "zsh" Enter
    tmux send-keys -t $selected_name "clear" Enter
    tmux send-keys -t $selected_name "nvim ." Enter
    tmux attach -t $selected_name
    exit 0
fi

if tmux has-session -t=$selected_name 2> /dev/null; then
    tmux attach -t $selected_name
    exit 0
fi