#!/bin/bash

# First we configure the terminals

apt-get install ranger
apt-get install neovim
apt-get install xonsh

# Set variables
home="/home/sagemaker-user"
current_folder="/home/sagemaker-user/user-default-efs/config"

# Function to log errors
log_error() {
    echo "$(date): $1" >> "$error_log"
}

# bash
if [ -f "$current_folder/bash_config.txt" ]; then
    cat "$current_folder/bash_config.txt" >> "$home/.bashrc"
else
    log_error "Warning: bash_config.txt not found"
fi

# xonsh
touch "$home/.xonshrc"
if [ -f "$current_folder/xonsh_config.txt" ]; then
    cat "$current_folder/xonsh_config.txt" > "$home/.xonshrc"
else
    log_error "Warning: xonsh_config.txt not found"
fi

# Now we configure nvim
if [ -d "$current_folder/nvim" ]; then
    cp -r "$current_folder/nvim" "$home/.config/"
else
    log_error "Warning: nvim folder not found"
fi

# Now we configure ranger
if [ -d "$current_folder/ranger" ]; then
    mkdir -p "$home/.config"
    cp -r "$current_folder/ranger" "$home/.config/"
else
    log_error "Warning: ranger folder not found"
fi
