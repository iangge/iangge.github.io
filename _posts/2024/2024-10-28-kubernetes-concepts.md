---
title: Kubernetes Concepts
date: 2024-10-28
categories: [Technology, Notes]
tags: [kubernetes, notes]     # TAG names should always be lowercase
---

First blog post! Thank you to my mentor Slava for encouraging me to start this blog and start learning Kubernetes. I'll be using this post to take notes of what I learn. [This video](https://www.youtube.com/watch?v=wXuSqFJVNQA) by Travis Media talks about the concepts to be familiar with before learning Kubernetes.

## Glossary / Concepts

+ **container** - "A standard unit of software that packages up up code and all its dependencies so the application runs quickly and reliabily from one computer to another" (Docker's definition)
+ **image** - blueprint for running an app with all of its required dependencies, codes, commands, etc, which are run inside containers. 
+ **Kubernetes** aka K8s - environment to orchestrate/automate deployment, management, scaling, and networking of containers. [Kubernetes Documentation](https://kubernetes.io/docs/home/)
+ **cloud** - Kubernetes is often deployed by companies in the cloud as a managed service, which can get expensive.
+ **YAML**, "Yet Another Markup Language" - data serialization language for configurations. Also a subset of JSON. [YAML Tutorial Link](https://www.cloudbees.com/blog/yaml-tutorial-everything-you-need-get-started)
+ **manifest** - a yaml or JSON file that declares how resources in Kubernetes are configured. Describes the desired state of the Kubernetes object. 
+ **linux networking basics** - required for learning Kubernetes due to communication between pods, containers, services, external destinations, etc.
    + networking topics to learn - OSI layers, protocols, IP, DNS, Gateways, routes, TLS, CNI.
    + [4-hour Networking Video](https://www.youtube.com/watch?v=IPvYjXCsTg8)
+ **kubectl** - terminal for managing Kubernetes clusters.
