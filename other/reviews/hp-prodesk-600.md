+++
title = "HP Prodesk 600 G1 DM Review"
+++

I bought this mini pc a while ago from eBay for about £40, and I've been using it as my main PC for the last month

## Performance

### Video Playback

| Resolution | Format | Player | Performance | Notes |
| :- | :- | :- | :- | :- |
| 1080p 60fps | h264 | mpv | No dropped frames | Using vaapi |
| 1080p 60fps (2x) | h264 | mpv | Some dropped frames | Using vaapi |
| 1080p 60fps | vp9 | mpv | No dropped frames | No hwdec |
| 1080p 60fps (2x) | vp9 | mpv | Lots of dropped frames | No hwdec |
| 1440p 60fps | vp9 | mpv | Bad performance | No hwdec |
| 1080p 60fps | vp9 | YouTube | No dropped frames | No hwdec |
| 1080p 60fps (2x) | vp9 | YouTube | No dropped frames | No hwdec |
| 1440p 60fps | vp9 | YouTube | Some dropped frames | No hwdec |
| 1440p 60fps (2x) | vp9 | YouTube | Very laggy | No hwdec |

### Web Browser

I use Firefox, and have found the performance to be fine. There is lag when opening a lot of tabs, or browsing intensive pages (for example minecraft.net), and a small amount of lag when switching between heavy tabs. Minimal/lightweight websites like Wikipedia, the Factorio Wiki or Arch Wiki work totally fine.  
Amazon loads in about 1.5 seconds

### Games

I tested GBA games with 2 emulators, GPSP (via retroarch) and mGBA, with Castelvania Aria of Sorrow. In the intro, and beginning gameplay, both performed fine. The fast forwad options got 10x+ speed on both.

Minecraft (26.2) ran okay, around 40 fps with all settings on low (fast graphics, fast clouds, no smooth lighting), 8 chunk render distance at 1080p. With Sodium and Lithium the fps increased to 50 fps, so it is playable.

Terraria was unplayable (in my experience Terraria is unplayable unless you can hit a rock solid 60 fps). It ran at about 40 fps and no matter which frame skip option I used it was running slow. Tested on low graphics at 1080p.

### Power Consumption

| Doing What? | Power From Wall |
| :- | :- |
| Idle | 13W |
| Idle (Firefox open) | 15W |
| Playing music, video and Firefox open | 26W |
| 100% Load (stress -c 4) | 33W |
| Loading multiple tabs in Firefox  | 40W |
| Compiling Retroarch core | 38W |
| GBA game | 22W |
| Minecraft | 55W |
| Terraira | 48W |
| Unigine Heaven | 43W |

### Photo Stuff

Tested converting a 3280x2522 png image to 1920x1476, with ImageMagick 7.1.1, 10 times  
Command: `time for x in $(seq 1 10); do magick in.png -resize 1920x "out$x.png"; done`  
Took 18.16 seconds, with about 25% total CPU usage

Using Darktable to apply presets to photos works fine. It's not instant, but it also isn't instant on my more powerful laptop and desktop.

### CPU/RAM

Geekbench 7: 898/1963: [results link](https://browser.geekbench.com/v7/cpu/96363)

Passmark: 1916/3476 (Memory: 1975): [results link](https://www.passmark.com/baselines/V11/display.php?id=512390508324)

### GPU

glmark2: 619 (glmark2-es was the same)

Unigine Heaven (no AA, 1080p fullscreen, no tessalation): 6 fps (windowed was the same)

WebGL [Aquarium](https://webglsamples.org/aquarium/aquarium.html) (1080p, fullscreen, Firefox): 5,000 fish: 50-60 fps, 10,000 fish: 35-45 fps, 15,000 fish: 25-32 fps

### SSD

This is probably more of a benchmark of the Patriot P210 512GB, but I ran `kdiskmark` anyway after running `fstrim -v /`:

| Test | MB/s | us |
| :- | :- | :- |
| Read: SEQ1M Q8T1 | 441 | 18,700 |
| Read: SEQ1M Q1T1 | 385 | 2,670 |
| Read: RND4K Q32T1 | 184 | 695 |
| Read: RND4K Q8T1 | 26 | 154 |
| Write: SEQ1M Q8T1 | 353 | 22,611 |
| Write: SEQ1M Q1T1 | 259 | 3,795 |
| Write: RND4K Q32T1 | 300 | 446 |
| Write: RND4K Q8T1 | 53 | 111 |

## Connectivity



* Bluetooth abnd wifi issues


## Other

* Fan rattling
