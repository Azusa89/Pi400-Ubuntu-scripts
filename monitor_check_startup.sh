#!/bin/sh

if [[$monitorcheck == *"Failed to get size of gamma"]]; then
     sudo mv /etc/X11/xorg.conf.bkp /etc/X11/xorg.conf
    echo "No monitor detected,Switching to Headless mode!"
    sleep 5s

else
    sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.bkp
    echo "Monitor detected, Switching to Monitor mode!"
    sleep 5s

fi

xrandr --listactivemonitors "$monitorcheck"