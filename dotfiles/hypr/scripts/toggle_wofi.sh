#!/bin/sh
pgrep wofi && killall wofi || wofi --show drun
