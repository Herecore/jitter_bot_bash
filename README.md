# Jitter aim bot
This is a repo containing a bunch of scripts glued together to allow you to abuse jitter aim mechanic in Apex Legends without having to get carpal tunnel syndrome.

## What is jitter aim
There's a mechanic in Apex Legends, which allows you to completely eliminate recoil on any weapon, you just have to move your mouse faster than 3.7 degrees/second. This works in any direction, so now we are aware that you can just shake your mouse while shooting someone, eliminating your recoil completely.

## What does it do?
It waits for you to press LMB, and then start shaking your cursor in square pattern, stopping when you release the LMB. 

## Is it safe to use?
No idea, lmao.

Maybe you'll get banned, maybe you won't, maybe EAC will start purging anyone who runs ydotoold in the background because of people like me and you, who knows. Use it at your own risk, I'm in no way responsible for anything you do with these scripts, quoting GPLv3 "This program comes with ABSOLUTELY NO WARRANTY"

## How do I use it?
1. Satisfy the [requirements](#Requirements)
2. Clone the repo to some directory
3. Run `./jitter` from terminal
4. Provide password if prompted (should not ask again until the restart of ydotoold)
5. Enjoy, you filthy cheater

## Requirements
- GNU/Linux (duh)
- [ydotool](https://github.com/ReimuNotMoe/ydotool) installed and ydotoold running in background - used to simulate mouse movement
- [hkdm](https://gitlab.com/postmarketOS/hkdm) - used to check if LMB is pressed or not

NOTE: ydotool requires access to `/dev/uinput`, so you'd have to add your user in group `input` (usermod -aG input *username*) for script to run properly
