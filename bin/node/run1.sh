#!/bin/bash
tmux new-session -d -s 'nasri'
tmux split-window -v
tmux move-window -t 0
tmux send-keys '../besu --config-file node1/config.toml ' Enter
tmux split-window -h
tmux send-keys '../besu --config-file node2/config.toml ' Enter
tmux split-window -v
tmux move-window -t 2 
tmux send-keys '../besu --config-file node3/config.toml ' Enter
tmux split-window -h
