+++
title="Summer Computer Setup"
+++

I live in Scotland, which, while it has a reputation for being cold and rainy, actually gets quite hot in the summer, especially now summers are getting hotter due to climate change. I grew up in Scotland so I'm used to the weather being mild or cold *most* of the time, meaning the 25°C+ we get now in the summer is pretty uncomfortable, especially when you are inside.  
Recently I've switched over to using a desktop as my main computer, as my laptop screen, that I had repaired with epoxy, finally snapped off *again*. It still works but needs major surgery to fix the broken hinge. I'm pretty happy with a desktop setup at the moment, but as temperatures start to rise, having a device dumping 85W+ into my, relatively small, study, is going to be an issue.  
So the idea is, move to a lower power device, preferably not my laptop. There are a few options here:

1. A "Mini PC" such as a HP G3 Mini. The problem with this is 1) You have to buy it used, and 2) The prices have been going up, especially the 8GB ones, due to the RAM crisis
2. A modern Raspberry Pi. Basically only a Pi 5 is suitable for actual full desktop use. Unfortunately these have also had a price rise, with a Pi 5 4GB currently £105, and an 8GB model at £168. Considering the extra parts you need (PSU, case, NVME adapter, NVME drive, micro HDMI adapter etc) it would total to around £200, which is just too much for a Raspberry Pi in my opinion. (Note that this isn't the Pi Foundations fault, Pi's aren't really meant for desktop use, and the RAM debacle isn't their fault)

Neither of these options are great, so I decided to implement a project I've been thinking about for a long time, a super-low-end setup using an old Raspberry Pi (a model 3B+). Now there are some realities of modern computer, mainly the intensity of modern websites, that means this isn't practical as a *full* desktop replacement, but I think it can replace 99% of my computer usage. The only things I don't think it can do (that I care about) are:
* Open modern websites (YouTube, email, Google Docs etc)
* Run photo editing software (Darktable in my case)
* Play high resolution video (720p+ is a bit of a stretch on a Pi 3B+)

80% of my interactions with a computer at the moment is done via a terminal, which can easily run on a Pi 3B+. Basic GUI apps (photo viewer, pdf viewer, lightweight web browser) will also run fine.

My desktop currently has a dual boot setup, with Arch Linux (KDE) as my "daily driver", and Windows 11 which I only ever use when doing specific things (in this case, video games)  
My idea is to treat the current desktop Linux install similarly, only using it for specific things (photo editing, javascript-heavy web browsing etc)  
Everything else can be done on the Pi 3B+, meaning the desktop only needs to be turned on for half an hour a day at most, keeping it's heat output to a minimum.

Now there are some problems with this plan. The first obvious one would be "how will I watch videos (YouTube, TV shows etc)". Currently I watch basically everything on my phone, becuase I like to move around while I watch stuff. So as long as I can *download* videos on the Pi 3B+ and transfer them to my phone, that is perfectly usable.  
The second obvious problem is browsing modern websites. This is sometimes necessary, and for that I will have to use my desktop (for example buying something on Amazon, or logging into a VPS provider dashboard). However a lot of it can be replaced with CLI tools (checking weather, coding documentation, stackoverflow, YouTube browsing, Google Docs, email)

## Which OS To Use

I've played around with a few different OS options for the Raspberry Pi in the past. The default on is of course [Raspbian](https://www.raspberrypi.com/software/operating-systems/) (although apparantly it's just called "Raspberry Pi OS" now). This works pretty well, as expected, but isn't the most lightweight. Another option is [DietPi](https://dietpi.com/), I tried to use this on a Pi (can't remember which model) in the past but had issues getting the internet to work properly. I'm sure it was just me being incompetent, it seems like a well maintained distro. The issue is it also is based on Debian, but they do claim is has a smaller footprint. I might try this in the future.  
A super-light option is [TinyCore](http://tinycorelinux.net/ports.html) which is *very* lightweight but as a consequence very hard to do anything on. I think for a Pi 3B+ this would be over (or I guess under) kill.  
For now I will stick to the standard Raspbian. The 2 sensible options would be either Trixie or Bookworm. They both use the same kernel version, so I'm going to go with Bookworm just because I've used it before in the past.

## Tools I Will Use

I plan to use the most efficient, performant tools I can for basically everything.
* Terminal [st](https://st.suckless.org/)
* Window manager - [dwm](https://dwm.suckless.org/) or [i3](https://i3wm.org/) or [bspwm](https://github.com/baskerville/bspwm)
* File browser - [lf](https://github.com/gokcehan/lf) or [nnn](https://github.com/jarun/nnn)
* Run menu/shortcuts menu - [dmenu](https://tools.suckless.org/dmenu/)
* Browser - [surf](https://surf.suckless.org/) or [qutebrowser](https://qutebrowser.org/)
* Photo viewer - [feh](https://github.com/derf/feh) or [sxiv](https://nsxiv.codeberg.page/)
* Music player - [MOC](https://moc.daper.net/) - About 1/2 the memory usage of MPD
* Video player [VLC](https://www.videolan.org/) - Not the most lightweight but runs best on the Pi
* Text editor - [micro](https://micro-editor.github.io/) and [vim](https://www.vim.org/)
* Games - [RetroArch cores](https://github.com/libretro/libretro-super)
* Anything else I can think of will just be done with basic cli tools, that's how I work now anyway since learning to use the terminal

## OpenGL Issue

There is a [known issue](https://github.com/raspberrypi/linux/issues/5780) with the Pi 3B+, OpenGL will cause GPU resets to occur, and potentially a whole system freeze. There is a patched kernel which prevents total lockups, but OpenGL applications still have a high change of not being usable. Fortunately I don't think this will be a major issue with my setup, basically all of the programs I plan to use either don't use OpenGL, or can be configured to avoid OpenGL

## Other Hardware

I tested the Pi 3B+ with my Bluetooth keyboard and trackpad [this one](https://www.amazon.co.uk/Inateck-Bluetooth-Keyboard-Touchpad-Compatible/dp/B0DSZRV248?th=1) and it seemed to handle it fine, no noticeable lag or dropped key inputs. Note that I was using 5Ghz WiFi, as 2.4GHz WiFi on my Pi simply doesn't work properly.  
Going to be using a 21.5" 1080p monitor for this setup, instead of my usual 29" 1080p ultrawide, as the Pi 3B+ supports a maximum output of 1920x1080. Also it's the only monitor I have at University.

## Internet

Regarding the internet performance, using 2.4GHz WiFi causes the speed to fluctuate between 0MB/s and 2MB/s. Connecting to my home routers 5GHz SSID and I get the full 5-6MB/s that I would expect from our internet connection (we live in a rural area). When I get back to Uni I will test it on that connection, which can go up to 100 MB/s. Somehow doubt I will get all that on the Pi, but that's fine, I've long since learned to live with 5MB/s internet.

## Inspirations

I have been thinking of doing a weak-system Linux setup for a while, mainly inspired by these 2 videos:
* [Tiny Core Linux is Basically Magic - Action Retro](https://www.youtube.com/watch?v=sxeRCpg9mfc)
* [Linux on an OLD Laptop - TechHut](https://www.youtube.com/watch?v=aA5EsBtNXAk)

Regarding this specific setup, I've taken inspiration for the software from a few different places, including:
* [DistroTube](https://www.youtube.com/watch?v=7pfxHoAnCkE)
* [Bread](https://www.youtube.com/watch?v=4JWeU78A95c) on [Penguins](https://www.youtube.com/watch?v=l-f5KgibVfI)
* [Luke Smith](https://www.youtube.com/watch?v=uqLcvKYl-Ms)
