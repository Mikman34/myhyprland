#!/bin/bash
echo "{\"text\":\"$(cat /sys/class/drm/card1/device/gpu_busy_percent)%\",\"tooltip\":\"GPU Usage: $(cat /sys/class/drm/card1/device/gpu_busy_percent)%\"}"
