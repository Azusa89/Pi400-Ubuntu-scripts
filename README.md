1)monitor_detect_startup

start up script designed specifically for pi400s that are using display setups as examplified on ETA prime`s youtube channel.

Running Ubuntu mate on the Pi400, the gui will not boot if a display is not plugged in. If you intent to use remote software as a workaround for a display then you need to set up a fake dummy display to bypass the issue and have the gui boot properly. The workaround I have used plays with the X11 xorg method of mking a headless setup.
Using the above method conflicts abit with using the following method to use an android device as a display.
(https://www.youtube.com/watch?v=nui8kXvUAys).
This is a start up script intened to fix this issue.
