# Type "make" in front of commands in terminal

local:
	bundle exec jekyll serve
# Runs Github Pages site locally

local-drafts:
	bundle exec jekyll serve --drafts
# Runs Github Pages site locally with posts in _drafts directory

# Tutorial - Makefile rule for Jekyll drafts:
# https://blog.gnclmorais.com/makefile-rule-for-jekyll-drafts
FILENAME:=./_drafts/$(shell TZ="America/Los_Angeles" date +'%Y-%m-%d')-.md
define post
---
title: '' # Insert title, categories, and tags + add title to filename
date: $(shell TZ="America/Los_Angeles" date +'%Y-%m-%d %H:%M:%S')
categories: []
tags: []  # tag names should always be lowercase
---
endef
export post

draft:
	touch $(FILENAME)
	echo "$$post" > $(FILENAME)
