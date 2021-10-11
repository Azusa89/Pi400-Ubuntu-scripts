#!/bin/sh

monitorcheck='xrandr --listactivemonitors'
FILE=/etc/X11/xorg.conf.bkp

if [[$monitorcheck == *"HDMI"]]; then
    if test -f "$FILE"; then
        sudo mv /etc/X11/xorg.conf.bkp /etc/X11/xorg.conf
        #"Switching to Headless mode!, rebooting in 5 seconds"
        #sudo reboot
        #"No monitor detected,xorg.conf detected Headless mode! already enabled"
    fi
    

else
    if test -f "$FILE"; then
        #echo "monitor detected,xorg.conf not detected monitor mode! already enabled"
    else
        sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.bkp
        #"Monitor detected, Switching to Monitor mode!"
        #sudo reboot
    fi    
    
fi