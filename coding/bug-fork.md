+++
title = "bug-fork"
+++

bug is a terminal todo/issue tracker program/script I found on the internet. I wanted to change it in a couple of ways so I decided to re-write it

![bug ls](/images/program-screenshots/bug-ls.jpg)

![bug view](/images/program-screenshots/bug-view.jpg)

## Changes

* Now all in `/bin/sh`
* `read` for basic info input
* Coloured output
* Sorting by priority
* `fzf` integration
* Non-permanent deletion

## Usage

Set `$BUG_PROJECT` to a file which will contain all of your todos

### Basic Commands

`bug list` - List all active todos  
`bug view` - View details for a specific todo - uses `fzf` to select  
`bug add` - Add new todo  
`bug delete` - Delete specific todo - uses `fzf`  
`bug edit` - Edit specific todo - uses `fzf`  
`bug restore` - Restore deleted todo - uses `fzf`  

### Input Syntax

For priority, "URGENT", "High", "Medium", "Low" and "Anytime" will be highlighted and sorted  
These can be added by specifying 1 through 5 (1 being urgent) when creating an issue

For status, "NS" (not started) and "IP" (in progress) will be highlighted

## Links

* [GitHub](https://github.com/regexghost/bug-fork)
* [Codeberg](https://codeberg.org/regexghost/bug-fork)
* [My Website](https://git.regexghost.com/bug-fork)

