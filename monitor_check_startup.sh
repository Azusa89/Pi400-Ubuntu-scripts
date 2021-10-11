
Timothy Koh
#!/bin/sh

FILE=/etc/X11/xorg.conf.bkp
if xrandr --listactivemonitors | grep HDMI; then
    if test -f "$FILE"; then
        echo "HDMI is plugged in and already in Monitor mode, Nothing to do."
    else
        echo "HDMI plugged in and not in monitor mode "
        sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.bkp
        echo "Switching to Monitor mode!, rebooting now."
        sudo reboot
    fi

else
    if test -f "$FILE"; then
        echo "Monitor not detected and in monitor mode".
        sudo mv /etc/X11/xorg.conf.bkp /etc/X11/xorg.conf
        echo "Switching to Headless mode!, rebooting now."
        sudo reboot
    else
        echo "Monitor not detected and already in headless mode. Nothing to do."
    fi
fi