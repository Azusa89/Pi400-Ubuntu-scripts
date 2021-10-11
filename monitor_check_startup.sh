#!/bin/sh

monitorcheck='xrandr --listactivemonitors'
FILE=/etc/X11/xorg.conf.bkp

if [[$monitorcheck == *"HDMI"]]; then
    if test -f "$FILE"; then
        echo "monitor detected,xorg.conf not detected monitor mode! already enabled"
        sleep 5s
    else
        sudo mv /etc/X11/xorg.conf.bkp /etc/X11/xorg.conf
        echo "Monitor detected, Switching to Monitor mode!"
        sleep 5s
        sudo reboot
    fi

else
    if test -f "$FILE"; then
        sudo mv /etc/X11/xorg.conf.bkp /etc/X11/xorg.conf
        echo "Switching to Headless mode!, rebooting in 5 seconds"
        sleep 5s
        sudo reboot
    else 
        echo "No monitor detected,xorg.conf detected Headless mode! already enabled"
    sleep 5s
    fi
    
fi