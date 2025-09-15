---
title: 'Windows Admin Fixes to Maplestory Launching Issues'
date: 2025-09-14 20:50:20
categories: [Technology, Troubleshooting]
tags: [windows, powershell, regedit, maplestory]
image:
  path: 'https://g.nexonstatic.com/maplestory/micro-site/static/landing/share_fb.jpg'
  alt: 'Maplestory banner'
---

## Background on Maplestory

I've been playing this game called Maplestory for a while, and the [current update v262](https://www.nexon.com/maplestory/news/update/29874/updated-8-26-v-262-midnight-carnival-mu-lung-patch-notes) caused an error where the game would not launch after trying to start it from Steam or the game's dedicated Nexon Launcher. After attempting the basic fixes of restarting my computer, reinstalling the game, and [verifying integrity of the game files](https://help.steampowered.com/en/faqs/view/0C48-FCBD-DA71-93EB), I finally stumbled across a solution that involved using Windows Powershell to create a new Administrator user to run the game. 

Another solution I saw was from a user on the Maplestory forums that recommended going into the Windows Registry Editor to change a value for the game's screen resolution configuration. My issue was different from this one since it was fixed by creating the new Administrator user, but this Registry Editor fix has worked for other people. 

Currently, I'm participating in a [Cybersecurity bootcamp with my school](https://cysec.team/) to prepare for the CCDC (Collegiate Cyber Defense Competition) tryouts. One of the lesson topics was securing Windows, which involved using some of the same tools and concepts that Maplestory players used to fix the game's launch issues. I thought it was cool running into these solutions in the wild when trying to get Maplestory work on my own PC, so I'm writing about them here.

## Running Maplestory as a new Administrator user

{% include embed/youtube.html id='4C_B_xbMmRA' %}