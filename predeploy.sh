#!/bin/bash

if [ "$1" = "y" ]; then
    exit 0
elif [ "$1" = "x" ]; then
    exit 1
else
    echo "Invalid argument. Please use 'y' or 'x'."
    exit 2
fi
