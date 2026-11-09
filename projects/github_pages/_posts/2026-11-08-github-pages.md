---
title: Setting up GitHub Pages
---

# Why

It's a lot easier to show off your projects and experience if you document them somewhere easily accessible. I've been self-hosting to meet a variety of needs for 20+ years, starting out with maintaining my own RSS feed for a radio show that didn't yet have a podcast and hosting fileshares for game patches and mod installers for LAN parties to today where I run a significant portion of the digital services my family relies on.

My current NixOS stack has changed a lot from my first foray into Ubuntu 6.10 on an old Gateway desktop. From rc.d scripts to systemd, services running on the host to docker-compose orchestrated containers, simple ext3 partitions on HDDs to btrfs and mdadm RAID on NVMe SSDs, my homelab has evolved as my and now my family's needs have grown. As it has grown, I've come across configurations I don't remember the reasoning behind and tools I've forgotten how to use. I'm hoping that by documenting my projects, I'll be able to easily refresh myself on the reasonings for design choices, tool usage, and other details that can't be gleaned from the configuration.

### Goal

Make it easy to update:

If I have to think too hard about it or do too much to set up a post, I'm not going to take the time or make the effort. To that end, I've tried to make this page as easy to update as possible. For example:
* The Projects page automatically lists new project headers added under projects/<project>/index.md as well as listing all project posts.
* Each project header page lists recent posts only for that project.
* Posts not specific to a particular project are listed on the Home page.

These features allow for new posts to be automatically listed on the relevant pages, making it so a new post only requires creating a new file. The hope is that the lower the barrier to entry, the easier it will be for me to turn this into a habit. Thanks for joining me on this journey!
