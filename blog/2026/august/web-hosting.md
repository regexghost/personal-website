+++
title = "All My Web Tools/Services"
datePublished = 2026-08-07
template = "blog-page.html"
+++

Just a quick blog post to detail the web services and server tools I use.

## Main Website

* VPS provider: [RackNerd](https://www.racknerd.com/) - Bought through an offer on LowEndBox, I just got the cheapest option and it's worked great so far. Their control panel is nice to use (not horrible and bloated like OVH), and the server seems pretty responsive. It's in the States so it's at `150ms` ping from me in Scotland, but that doesn't really matter much.
* Server software: [nginx](https://nginx.org/en/) - As this was my first self-hosted website i just followed the landchad.net guide, and so used nginx. It works, can't say I full understand what every config line does but it works.
* Certificate: [certbot](https://certbot.eff.org/)/[Let's Encrypt](https://letsencrypt.org/) - Again just following the landchad.net guide. Also works perfectly well
* Site generator: [gozer](https://github.com/dannyvankooten/gozer/) (specifically [my fork](https://github.com/regexghost/gozer/)). Nice simple SSG that allows for enough templating (after some modifications) for my use case.

## git

* VPS provider: Same RackNerd server
* Server software: Just using standard git, I still haven't set up proper https cloning yet, I tried to but got stuck on some permission issues
* Website software: [stagit](https://codemadness.org/stagit.html) - Doesn't require any `cgi` scripting, and runs very quickly. Getting the scripts set up is a bit of a hassle, I followed [this guide](https://zakaria.org/posts/stagit-setup.html) from zakaria.org. Website running with nginx same as this website

## Email

* VPS provider: Also using RackNerd, port `22` is open so email works fine, and they were able to set up reverse DNS for me really quickly after submitting a ticket. Haven't had any problems with email (or at least none that were caused by the VPS).
* Server software: [postfix](https://www.postfix.org/), [OpenDKIM](http://www.opendkim.org/) and [Dovecot](https://dovecot.org/) - This was a hassle to set up but I now have a 421 line markdown file containing all the instructions and config to get it working, which I will have to do again soon as I'm running Bookworm on the VPS which will be outdated soon...
* Email client: [Alpine](https://alpineapp.email/) - TUI email client, works pretty well. I actually have the VPS configured so that the minimum number of ports are open etc, so in order to check my email I have to open an SSH tunnel to the VPS. I prefer this as it leaves fewer possible malicious access points, which is important as with the email stuff I still don't really know what I'm doing.


## Gopherspace/Plaintext Site

(Note: I know I always call it a "plaintext" site, it's not really as it does use HTML and CSS, it's just nicer to call it "plaintext" rather than "minimal-css" or "lightweight-css")

* VPS provider: [DediRock](https://dedirock.com/) - I really like DediRock so far. Their control panel isn't quite as good as RackNerd's, but it's still miles better than OVH. I had an issue with payment when I tried to pay the invoice, and they responded to my support ticket within a couple of hours and it was all sorted before the end of the day.
* Server software: [quark](https://tools.suckless.org/quark/) - Simple suckless http server.
* TLS/HTTPS: [stunnel](https://www.stunnel.org/) - Was easy to set up and works well with quark. Overall managed to get a https website up and running without nginx
* Certificate: [ZeroSSL](https://zerossl.com/) - I used ZeroSSL instead of Let's Encrypt, just to see how it works. I had an issue with the cert not being accepted on my old-ass phone (iPhone 8), but that was fixed by downloading another cert and `cat`ing them all together.
* Gopher server: [gophernicus](https://github.com/gophernicus/Gophernicus) - Seems to work well. I haven't played around with gopher stuff much yet, I just got the site up and running really. Followed [this guide](https://lowendbox.com/blog/running-a-gopher-server-on-a-vps-retro-internet-with-modern-tools/) from LowEndBox
* Site generator: I made a quick (i.e. 5 hours lol) Go website generator using [gomarkdown](https://github.com/gomarkdown/markdown). Only reason I used gomarkdown not goldmark is because I'm more familiar with it. I know goldmark is more popular but gomarkdown does everything I've every needed (/allows for custom parsers/renderers). I haven't posted the source for the SSG online yet, I might do at some point but it needs tidying up and refining. Basically it just takes a bunch of markdown files, and produces 2 directories, a html website directory, and a gopher site directory. It also produces an index file with a list of blog posts. Nothing particularly interesting, other than the fact it outputs in 2 formats.
