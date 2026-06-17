+++
title = "Project Ideas"
+++

My list of project ideas. If you are reading this and think one of these projects would genuinely be useful, or you have a similar problem, feel free to let me know!

## Coding

I have a *lot* of coding project ideas. No guarantees that any given project here will actually happen

### Simple eBook Reader

Simple terminal program that just reads EPUB files and has nice output. Would need an html parser and possibly use ueberzug for images

- Possible Language: Go

### Simple Viewer

X11 program for viewing basic text and images. Basicalyl somewhere between a web-browser, pdf viewer and terminal pager. Would support images, and could read from standard input like a pager. Advantage over a terminal would be easier image support and non-monospace font options. Advantage over pdf viewer would be speed and flexibility.

- Possible Language: Go, Zig, C

### Suckless Spell-Check

Both of the major spell check libraries (hunspell and aspell) are rather large projects. I'm sure they are well written, and they serve a purpose, but a more minimalist alternative should be possible.  
This project would just have basic functionality; reading in a file, outputting incorrectly spelt words along with suggestions. Perhaps also a TUI interface allowing the user to choose between options, or add the existing word to the dictionary.

- Possible Language: Zig, Go

### Ultra-Minimal dmenu Alternative

dmenu is suckless software and is faily lightweight (~1300 SLOC) compared to say Rofi (~25000 SLOC). I'd like to have go making an even more lightweight version, with only the most basic features.

- Possible Language: Zig (good C support to use XLib headers)

### Basic Photo-Site Creator

A simple program that takes a bunch of photos, descriptions and other metadata, and outputs a HTML grid of said images. No JS, customisation left to CSS.

- Possible Language: Go

### Pro Cycling Stats CLI

CLI/TUI tool for displaying live race data from procyclingstats, built in such a way to minimise traffic to their servers

- Possible Language: Go, Zig

### UK Weather Terminal Interface

A TUI interface that pulls data from the Met Office and BBC Weather, to allow comparing the forecasts

- Possible Language: Go, Python

### Weather Station Symbol Generator

Been fascinated with [these symbols][ws] ever since Nat 5 Geography, would be good to programatically generate them. Could be used as a weather widget on your computer, or even for educational purposes.

[ws]: https://www.bbc.co.uk/bitesize/guides/zbp82hv/revision/4 "BBC Bitesie - Weather Circles"

### GoTube

I previosuly had a project named GoTube, a TUI YouTube client with thumbnail support via ueberzug, and account integration via the innertube browser API. My plan is to split this project up into a backend, and a frontend video viewer, as the frontend video viewer could be used for more than just YouTube, and the backend tools could be useful by themselves. Maintaining this was a bit of a chore as YouTube are always changing their website JSON format. I'm egenerally anti-AI for programming but this could be a genuine usecase, more experementation is needed.

### Markdown to Groff Converter

A few of these exist on the internet but I can't find any that handle images. Admittedly images with Groff seems like a pain so that might be why... Born out of a desire to build documents in plaintext without installing all of LaTeX

### DekuDeals API

Another project I previously made but never finished. I do want to bring this back at some point, I lost my motivation to work on it becuase I stopped religiously buying Switch games, but it's still a neat idea.

### Minimalist Game Library Manager

I use Playnite on my desktop gaming PC to organise all my games, which works well but a more lightweight alternative, that works on Linux, would be nice. There is Lutris, but I don't need any of the feaetures it has. Doesn't even need to be a game *launcher*, just a way to visually organise the games I want to play.

- Possible Language: Go, Zig, C#

### Games

Grouping all of my video game ideas into one section

#### Idle Fish Game

I used to play [Abyssrium][aby] on my phone but it's a bit too much of a "mobile game". It would be neat to make a game like this without ads or microtransactions etc. Not sure if it would be for mobile or desktop.

[aby]: https://www.abyssrium.com/ "Abyssrium Homepage"

#### Top-Down Planet Crafter Clone

Game in the style of [Planet Crafter][pc] but top-down or isometric. Possibly good as a first game project

[pc]: https://store.steampowered.com/app/1284190/The_Planet_Crafter/ "Planet Crafter Steam"

#### Incremental/Multiplayer/Browser Game

A combination between old school MUDs, modern incremental browser games, and resource management games

### Mini Projects/Other

Projects that can be done in an afternoon:

* An `ls` clone in Zig - mainly as a learning exercise
* Simple cli file management tools (batch renaming, numbering etc)
* A fun terminal program that simulates a junction with traffic lights
* [asciiquarium][asq] rewrite in C or Zig
* cli tool for word pronounciation
* Simple RSS feed generator. Takes markdown files and outputs RSS feed

[asq]: https://github.com/cmatsuoka/asciiquarium "asciiquarium - GitHub"

Vague ideas:

* Something with the [Nuklear][nuk] minimal C UI library

[nuk]: https://github.com/Immediate-Mode-UI/Nuklear "Nuklear GitHub"

## Linux

### Low Powered Computers

The [Pi 3B+ desktop setup][pi] is the first in a series I hope to make of usable Linux setups on underpowered/old hardware. Other ideas I have are:
* Old mini PC
* Portable Pi cyberdeck
* Old Thinkpad
* Old laptop converted to desktop or all in one (similar to [this DIY Perks video][diy])

[pi]: /linux/pi3-b-setup-pt1 "Part 1 of my Pi 3B+ setup series"
[diy]: https://www.youtube.com/watch?v=8jeLCQ62vFk "DIY Perks all in one"

### Minimalist Software

Minimalist software comprises a lot of my workflow already, but there are areas I would like to improve on. Inspired somewhat by [this guide][alt]

[alt]: https://github.com/mayfrost/guides/blob/master/ALTERNATIVES.md "Alternatives to bloatware"

## Hardware

### Thinkpad Keyboard -> USB Keyboard

I really want [one of these][tpk] but I can't find any in a UK layout, and they are all quite expensive. It should be possible to make one using a Thinkpad keyboard extracted from an old laptop, and a Pi Pico or Arduino in HID mode.

[tpk]: https://support.lenovo.com/gb/en/solutions/pd026745-thinkpad-compact-usb-keyboard-with-trackpoint-overview-and-service-parts "Thinkpad USB keyboard"

### Mod an XBox 360

The XBox 360 was my mid-childhood console. Don't currently own one but I would like to, and modding it doesn't seem *too* hard.

### GaMeR CoNsOlE

Taking a Ryzen mini PC or laptop, extracing the motherboard and mounting in an old game console shell (OG XBox, PS2 etc). Batocera or similar would be used to emulate any console up to the 6th gen

### DIY Bike Computer

Using either an old Android phone, or a round display [like this][rd]. Recording ride data for Strava, and displaying basic maps using OpenStreetMap data.

[rd]: https://thepihut.com/products/seeed-studio-round-display-for-xiao-1-28-round-touch-screen "Example round display"

### Arcade Stick

DIY arcade stick/controller (with buttons), made using Pi Pico. Would be usable on Switch, PC etc

## Other

### Website

* Gopher or Gemini plaintext site
* Webrings stuff
* Style my [git website][mygit]
	- Also get `git clone` working properly
* Photo sub-website
	- Need to build the photo site generator first
* Wiki sub-website
	- Just a wiki for random computer knowledge I have gathered
* Single info page/linktree page

[mygit]: https://git.regexghost.com "git.regexghost.com"

## Defunct Ideas

* Performant Obsidian clone - a program like Obsidian but built in a native UI library like XLib, prioritising performance
	- Defunct as I use terminal text editors now and don't see myself going back to GUI ones
* DIY arcade cabinet - a proper full/nearly-full size arcade cabinet
	- I don't have the room for this at the moment unfortunately
* Digital pinball machine
	- Same as above, not enough room
