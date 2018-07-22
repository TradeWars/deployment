# Motivation

This setup requires the use of a few technologies, some of which require
installation to your server machine. This guide will not cover the installation
but the technologies chosen have plenty of documentation and generally have
quick and easy deployments.

## Scripts

Common Question: "Why not just _write a bash script_?"

I get this a lot when discussing seemingly complex setups to perform seemingly
simple tasks. I get it, if you're a sysadmin you probably do a lot of automation
via bash scripts.

I'd be lying if I said I have nothing against bash scripts. I have a lot against
bash scripts. They are fine for quick jobs but often, "quick jobs" evolve into
production deployments before you know it. If your entire infrastructure is
underpinned by a single script, you'd better hope it's well commented!

I won't outline all the issues with scripts but, in general, this guide makes
use of _declarative_ rather than _logic_ driven operation. This means, instead
of manually defining the logic with control flow such as `if`, `else`, `for`,
etc. you declare _what_ you want and the application does it for you.

The catch is that the application must support what you want to do. Most of the
time, this is the case and you can happily rely on whatever software you're
using to automate your tasks for you. Hand-written scripts are often a fallback
for when this isn't the case.
