---
title: 'Replacing Defective RAM on an HP Laptop'
date: 2026-06-03 18:38:16
categories: [Technology, Hardware]
tags: [hp, laptops, repairs, troubleshooting]
image:
  path: 'https://guide-images.cdn.ifixit.com/igi/jAPSIlWKSFYNU1uZ.large'
  alt: "Troubleshooting and replacing the memory on an HP laptop."
---

## Background

Part of my job as a Computer Technician is performing hardware repairs for laptops under warranty. Today, a laptop came in that had a flickering screen. It would only boot up with Windows about half the time. When Windows loaded, I would try to login, but it would freeze after a minute. The other half of the time, nothing would load on the screen, yet the caps lock LED light would blink. 

Initially, I thought it was an issue with the screen because of the flickering, so I plugged in an external monitor into the HDMI port. This did not end up being the solution, and even if it was, the unresponsive trackpad and mouse from the frozen screen would still need to be addressed.

After [power resetting](https://support.hp.com/us-en/document/ish_1997208-1551050-16) the laptop a couple times, I noticed that the caps lock LED light would blink during the times when nothing on the screen loaded. It blinked in a specific pattern: 3 long and 2 short. Looking up the light code indicated that it was a [memory issue](https://support.hp.com/us-en/document/ish_1997719-1528356-16#:~:text=The%20red%20light%20blinks%20three%20times%2C%20and%20then%20two%2C%20short%20white%20light%20blinks%20(3%20long%20red%2C%202%20short%20white)).

Removing one of the RAM sticks allowed the laptop to boot as normal with the trackpad and mouse being responsive as well. We found the defective RAM module! However, this meant that the laptop only loaded with half the RAM (8 gb instead of 16 gb) because we took out one of them. That change was reflected in [Task Manager](https://learn.microsoft.com/en-us/troubleshoot/windows-server/support-tools/support-tools-task-manager#:~:text=usage%20of%20each.-,Performance,-Lists%20and%20graphs) showing only 8gb of available memory in the performance tab. 

![Example of memory performance tab in Task Manager](https://www.easeus.com/images/en/screenshot/partition-manager/fix-high-memory-by-increase-physical-memory.png)

Luckily, we had a replacement RAM of the same type that we slotted in for the old one. The new RAM allowed the laptop to return to its original 16 gb of available memory. The repair was completed!

## Reported Issue

"Screen freezes after booting. Keyboard and mouse stopped working."

## Diagnosis

Memory failure identified by caps lock flashing 3 long and 2 short blinks.

## Solution

We replaced the defective RAM with a new one.

<iframe width="560" height="315" src="https://www.youtube.com/embed/qU__JMbWBp8?si=0LcAI8z323nK6JqM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

The video above was particularly helpful in identifying the solution. As the author puts in, "**RAM is kind of like headlights on a car. They tend to go bad one at a time.**" She then suggested using the process of elimination to find out which RAM stick is faulty by turning the computer on with only one of the RAM sticks on at a time. The one on the right ended up being the one needing replacement. Thanks Egghead Fixes! 

[This article from iFixit](https://www.ifixit.com/Guide/HP+15-dy+RAM+Replacement/159400) was another helpful resource for walking me through how to replace the RAM on an HP laptop. Overall, this was a fairly simple fix but satisfying to perform.
