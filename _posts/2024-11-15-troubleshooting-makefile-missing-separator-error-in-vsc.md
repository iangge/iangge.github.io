---
title: 'Troubleshooting Makefile Missing Separator Error in VSC'
date: 2024-11-15 00:00:00
categories: [Technology, Troubleshooting]
tags: [makefile, vsc]
layout: post
---

### Background on Makefiles

Recently, I've learned about Makefiles (Thanks again to Slava). [Make](https://en.wikipedia.org/wiki/Make_(software)#Makefile) is a command line tool, typically used for compiling and maintaining code for software in languages like C and C++. The Makefile serves as a sort of "recipe" for building the program that lists rules or specific commands for it. 

Makefiles can also be used for storing common commands. For example, I made one on this blog since I had to repeatedly type the command below to test my blog locally:

```bash
bundle exec jekyll serve
```

Now with this code in my Makefile, I can simply run `make local` to test this website:
```make
local:
	bundle exec jekyll serve
```

### Troubleshooting Missing Separator Error

However, whenever I tried running `make local` in Visual Studio Code, I ran into an error that said "missing separator":
[![Makefile-Missing-Separator.png](https://i.postimg.cc/XNzdB10N/Makefile-Missing-Separator.png)](https://postimg.cc/hhVfHrjN)

I started looking up solutions, and a [Stackoverflow](https://stackoverflow.com/a/16945143) poster linked the GNU make utility documentation that stated, ["a tab character needs to be at the beginning of every recipe line"](https://www.gnu.org/software/make/manual/make.html#Rule-Introduction).

The poster then suggested using the bash command below to see where the line endings and tabs are:

```bash
cat -e -t -v Makefile
```

The cat command in unix is used for displaying file contents or concatenating files. The options after `cat` ensure that new lines, tabs, and non-printing characters are also displayed in the output. [(Source: Linux manual page on cat command)](https://man7.org/linux/man-pages/man1/cat.1.html)
* `-e`, displays $ at the end of each line
* `-t`, displays ^I for every TAB character
* `-v`, displays ^ and M- for non-printing characters

A comment on the original Stackoverflow answer found a way to make the command even shorter:
```bash
cat -A Makefile
```

* `-A`, combines the -e, -t, and -v options from above

### Solution

After using `cat -A Makefile`, this was my output:
```
local:$
	bundle exec jekyll serve$
```
Despite using the tab button to indent the 2nd line, there was no `^I` before `bundle`. That meant that my IDE (Visual Studio Code) was using spaces to indent. I used this YouTube video to learn how to convert indentation to tabs in VSC:
<iframe width="560" height="315" src="https://www.youtube.com/embed/MOdWPA07bMU?si=QwIfjJ2ikzwejWR_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

After changing that option in Visual Studio Code and putting the tab characters into the Makefile, this was my new output for `cat -A Makefile`:
```
local-drafts:$
^Ibundle exec jekyll serve --drafts$
```

The `^I` was there, which got rid of the missing separator error! This now allows me to use my Makefile for storing commands.
