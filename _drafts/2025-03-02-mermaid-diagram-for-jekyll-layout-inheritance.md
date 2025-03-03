---
title: 'Mermaid Diagram for Jekyll Layout Inheritance' 
date: 2025-03-02 18:41:36
categories: [Technology, Jekyll]
tags: [mermaid, oop]  # tag names should always be lowercase
---

Recently, I created a blog theme for Jekyll called Lined Paper, and I intended for it to look somewhat like this theme, Chirpy. When following the [Jekyll's step-by-step tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/), I noticed they mentioned how layouts in Jekyll use inheritance. 

> Inheritance is one of the core features of object-oriented programming. It’s a programming procedure that allows you to reuse code by referencing the behaviors and data of an object. In other words, a class that inherits from another class shares all the attributes and methods of the referenced class.

([Codecadamey](https://www.codecademy.com/resources/blog/what-is-inheritance/), 2023)

I remembered this concept when I took a Java class at my community college, so it was nice to run into it again when making a Jekyll theme.

For Jekyll themes, "inheritance is useful when you want to add something to an existing layout" ([Jekyll Docs](https://jekyllrb.com/docs/layouts/#inheritance)). For example, I wanted the same sidebar navigation on every page of my Jekyll theme, so I needed to use inheritance to ensure every layout stemmed from the default one with the sidebar. 

<!-- Note to self: html code does not work in code blocks -->
