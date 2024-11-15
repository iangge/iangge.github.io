# Type "make" in front of commands in terminal

local:
	bundle exec jekyll serve
# Runs Github Pages site locally

local-drafts:
	bundle exec jekyll serve --drafts
# Runs Github Pages site locally with posts in _drafts directory

# Tutorial - Makefile rule for Jekyll drafts:
# https://blog.gnclmorais.com/makefile-rule-for-jekyll-drafts
FILENAME:=./_drafts/$(shell date +'%Y-%m-%d')-.md
define post
---
title: ''
date: $(shell date +'%Y-%m-%d') 00:00:00
tags:
layout: post
---
endef
export post

draft:
	touch $(FILENAME)
	echo "$$post" > $(FILENAME)
