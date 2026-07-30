+++
title = "nano System Copy"
datePublished = 2026-07-30
template = "blog-page.html"
+++

I wrote a patch for the GNU nano text editor that allows you to copy highlighted text to the system clipboard. This was one of the features I missed after switching from micro to nano.

[The patch can be seen here](https://codeberg.org/regexghost/patches/src/branch/main/nano-copy-system.diff) and can be applied with my `otherPrograms.sh` script in [my dotfiles](https://codeberg.org/regexghost/regexghost-dotfiles).

In theory I could have used an `st` patch to achieve this, but it would be sub-optimal as it might copy line numbers, and not handle newlines properly.
