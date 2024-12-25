#!/bin/bash

if [ "$(id -u)" -eq 0 ]; then
    echo "I don't think you know what you're doing here"
    exit 1
fi

stow .
