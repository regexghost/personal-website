+++
title = "Update Your Bluetooth Firmware"
datePublished = 2026-07-10
template = "blog-page.html"
+++

I've been having issues with my Bluetooth keyboard using USB Bluetooth adapters for ages now. Yesterday I realised I couldn't use both my keyboard and my headphones at the same time without the keyboard disconnecting constantly. I tried to debug this for a while and eventually ran across this article: [Fixing RTL8761BU firmware loading on Linux for the TP-Link UB600](https://myshell.co.uk/blog/rtl8761bu-firmware-linux-ub600/). I'm actually using a Mercusys MA530 Bluetooth USB (enabled with [this dkms patch](https://github.com/ProgrammingRainbow/mercusys-ma530-dkms)), but the chip is the same.

Following those instructions I downloaded the Windows 10 driver, extracted the firmware binary and `sudo mv`'ed it to `/usr/lib/firmware` and all my problems were solved! I can now use my headphones and keyboard at the same time with no disconnects, and I can even put the USB directly in the PC instead of using an extension cable.

Now I just need to remember to re-do this when `linux-firmware` gets updated and my change is overwritten...
