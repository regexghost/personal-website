+++
title = "JWM Pi 3B+ Setup - Fastfetch + Moved to sbase"
datePublished = 2026-06-20
+++

## Fastfetch Output Finally Complete

![/images/jwm-fastfetch.png](fastfetch output)

The final piece of my setup is in place now, switching to oksh from bash, so my fastfetch screenshot is ready to be seen!

## Moved to suckless sbase

Switched to [suckless sbase](https://core.suckless.org/sbase) from the GNU coreutils. Required a few changes to my setup. Removing `--color=auto` from grep aliases is a big one, unforuntately that's not an option in POSIX grep. I will try and find a workaround for this at some point...  
A bunch of changes were necessary in shell scripts too, probably haven't found them all yet. Replaced `grep -A 5 -B 5` with an awk script in `metoffice.sh`
