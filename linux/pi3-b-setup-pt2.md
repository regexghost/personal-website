+++
title="Summer Computer Setup Part 2"
+++

Continuation of [part 1](pi3-b-setup-pt2)...

It's been about a month since I started this project, it's gone a lot slower than I would have liked simply due to University work taking up a lot of time. 

This article will be a bit of a ramble similar to part 1. Once I have 100% finalised everything I plan to make another, singular, concise article detailing the setup.

## Web Browser

I originally planned to use dillo as my main web browser, with suckless's surf as a backup for when javascript/heavy webpages are really needed. I however found dillo to be basically un-usable, even on basic tasks.

For example, searching for Wikipedia on [DuckDuckGo HTML](https://html.duckduckgo.com/html/), and clicking on the link, would just result in a blank page.

After testing some alternatives I settled on NetSurf, which is still minimal, using it's own lightweight engine, but does work for basic websites like Wikipedia, or my website. It's not ideal, lacking a lot of standard keyboard shortcuts and it's stuck on a default white theme, but for basic web use it works well.

surf I also had to abandon as it was too slow on the Pi 3. I actually found Chromium to work fine for occasional use, as long as you ensure the system has enough free RAM. I was able to use it for logging into codeberg.org, to authenticate with the terminal app for example.

## Window Manager

Tiling window managers are my preference, but I ran into a consistent issue on the Pi 3, the background flickering through when windows were moving around. I tried all manner of solutions but the problem is simply the Pi 3 being too slow to render one window shrinking, and one expanding, in the same frame, so there will be a gap.

I had a go at patching some of them (notably DWM and Awesome) to try and get around this, either by spawning temporary windows to hide the gap, or swapping the order of operations, but it never looked very good.

Ultimately I decided to use a floating window manager, as the same problem wouldn't occur due to windows only being moved one at a time. I used Xfce for the longest time, and I still use KDE on my laptop so I'm content with a floating window manager as long as it has good keyboard shortcuts.

After trying IceWM, Openbox and JWM, I settled on JWM (Joe's Window Manager) as it performed the best. It also has a very readable, hackable codebase so I was able to make some changes to it. Notably swapping the order of desktop switching (showing new windows first, before hiding old, to prevent the desktop flickering through), and changing XMap/UnMapWindow to XMoveWindow, moving windows on and off screen, the way DWM does it.

## Pi 3B+ Hardware Issues

I'm currently using the Pi 3B+ with a MicroSD card, so the disk performance is pretty slow. As it's a MicroSD card I'm also concerned about the lifespan. A few mitigation's I've implemented are:
* Mounting /tmp in RAM, reducing disk writes
* Upping `commit` to 100 for the `/` partition in `/etc/fstab`
* Installing log2ram
* Using a USB drive for all my music and videos (2 partitions, mounted at `~/Music` and `~/Videos`)

The WiFi on the Pi 3B+ is a bit temperamental, it only works reliably on 5GHz connections. My Bluetooth keyboard has been working fine however, although `xset r rate` and CapsLock -> Esc remapping get reset when it goes to sleep.

## Other Programs

For the terminal I did go with suckless's st. I've had a few issues with it but I've fixed most of them over time:
* Lines jumping around - Fixed by reverting an upstream change to `minlatency`
* Prompt flicker - Fixed with a patch that delays the deletion of a line after certain keystrokes
* Screen tearing - Fixed by implementing a double buffer with X11 extensions

I've switched over to RSS for basically all of my internet content consumption, including reddit, YouTube and news. `newsraft` is my current RSS reader of choice, it's very performant and easy to hack. Issues with interface lag when performing actions was fixed by copying the database to and from my RAM disk when using the program.

Music has been causing me a few issues. I originally planned to use MPD but it uses about 100MB of RAM. MOC (Music on Console) is much lighter on the RAM, but it's quite slow. The actual playback is fine but it's slow when starting or responding to commands. I actually converted all my music to opus in order to use [mus](https://git.sr.ht/~q3cpma/mus), but I've had issues getting it to work properly. For now I'm sticking with MOC.

## Future of the Project

Once everything is finalised on the Pi 3, I will make a more concise article detailing the setup.

I'm also broadening the project out, with the ultimate goal to use the most minimalist software option for everything I want to do on a computer. I've been trending towards that goal for years now, 
