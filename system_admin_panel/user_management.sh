#!/bin/bash

echo "User Management"
echo "1. List Users"
echo "2. Add User"
echo "3. Delete User"
read choice

if [ "$choice" -eq 1 ]; then
    cat /etc/passwd
elif [ "$choice" -eq 2 ]; then
    echo "Enter username to add:"
    read username
    sudo adduser $username
elif [ "$choice" -eq 3 ]; then
    echo "Enter username to delete:"
    read username
    sudo deluser $username
else
    echo "Invalid choice."
fi
