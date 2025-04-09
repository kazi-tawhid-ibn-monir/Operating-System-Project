#!/bin/bash
# Create a new user

USERNAME=$(zenity --entry --title="Create User" --text="Enter the username to create:")

if [ ! -z "$USERNAME" ]; then
    sudo useradd -m $USERNAME
    zenity --info --text="User $USERNAME created successfully."
else
    zenity --error --text="No username entered."
fi

