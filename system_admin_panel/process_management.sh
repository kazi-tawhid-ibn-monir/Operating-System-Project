#!/bin/bash

echo "Process Management"
echo "1. List Processes"
echo "2. Kill a Process"
read choice

if [ "$choice" -eq 1 ]; then
    ps aux
elif [ "$choice" -eq 2 ]; then
    echo "Enter Process ID to kill:"
    read pid
    kill $pid
    echo "Process $pid has been killed."
else
    echo "Invalid choice."
fi
