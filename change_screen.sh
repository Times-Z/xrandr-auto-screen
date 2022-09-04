#!/bin/bash

readonly screen=$1

grep_screen_number=$(($screen + 1))"p"

screen_name=$(hwinfo --monitor --short | awk '{print $1}' | sed -n $grep_screen_number)

$(~/.screenlayout/$screen_name.sh)

