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

Now with this code in my Makefile I can simply run "make local", to test this website:
```make
local:
	bundle exec jekyll serve
```

### Troubleshooting Missing Separator Error

However, whenever I tried running "make local" in Visual Studio Code, I ran into an error that said missing separator:
[![Makefile-Missing-Separator.png](https://i.postimg.cc/XNzdB10N/Makefile-Missing-Separator.png)](https://postimg.cc/hhVfHrjN)

I started looking up solutions, and thanks to a [Stackoverflow](https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop) post, I discovered that ["a tab character needs to be at the beginning of every recipe line"](https://www.gnu.org/software/make/manual/make.html#Rule-Introduction).

[YouTube](https://www.youtube.com/watch?v=MOdWPA07bMU&ab_channel=RuiWang)

[Stack Overflow](https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop)
