#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
    for ((i=1; i<=3; i++)) do
        if [ -n "${!i}" ]; then
            if [ $i -eq 3 ] && [ -n "${!i}" ]; then
                printf "%s" "${!i}"
            elif [ $i -eq 1 ]; then
                printf "%s\n" "${!i}"
            else
                printf "%s\n" "${!i}"
            fi
        fi 
    done
fi