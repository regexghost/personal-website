+++
title = "My .kshrc Is Far Too Long"
datePublished = 2026-07-17
template = "blog-page.html"
+++

My `~/.kshrc` (equivalent to `~/.bashrc` for `ksh`/`oksh`) is far too long, currently almost 500 lines. Additionally I have a local `aliases.sh` file containing about 100 lines.

I'm going to make it a mini-project to trim this down a lot, by a) deleting unnecessary stuff and b) moving larger functions into separate files. I'd also like to completely get rid of my local `aliases.sh` file (by local I just mean it's not on GitHub). It contains things which are more private (for example `ssh` aliases for Uni servers), but I should be able to anonymise it all...
