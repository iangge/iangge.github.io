---
title: Challenges when Creating a Jekyll Theme
date: 2025-01-27 08:28 # Enter date here and in file name
categories: [Technology, Websites]
tags: [jekyll, html, css]    
---

Recently, I've been working on a Jekyll theme, [Lined Paper](https://iangge.github.io/lined-paper/). It's been helpful for learning some front end concepts like HTML and CSS. However, I did run into some issues, like with any project.

## Jekyll-archives Plugin Incompatibility with GitHub Pages

I modeled my theme after a blog one called [Chirpy](https://chirpy.cotes.page/), which had pages for categories and tags. It also uses the jekyll-archives plugin to create these pages. However, GitHub Pages has a limited number of [whitelisted plugins](https://pages.github.com/versions/) for security reasons. Jekyll-archives is not on the whitelist, but there is a workaround. 

On the [Jekyll docs](https://jekyllrb.com/docs/continuous-integration/github-actions/), they provide a tutorial for a workaround that uses GitHub Actions. "GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform that allows you to automate your build, test, and deployment pipeline" ([GitHub Docs](https://docs.github.com/en/actions/about-github-actions/understanding-github-actions)).

Source: [starter-workflows](https://github.com/actions/starter-workflows/blob/main/pages/jekyll.yml)