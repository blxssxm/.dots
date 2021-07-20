#! /bin/bash

xwallpaper --zoom /home/dawn/Downloads/Pictures/linen.jpg
xcompmgr -c
while true; do
	xsetroot -name "$(mocp -Q %state,%song,%album,%tl) | $(acpi -b | awk '{print $3,$4}') | $(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)
	) | $(free -h | awk '/^Mem:/ {print $3 "/" $2}') | $(uptime -p) | $(date '+%Y-%m-%d %H:%M:%S')"
	sleep 1s
done


