---
title: Getting Humbled by Kubernetes
date: 2024-11-2 # Enter date here and in file name
categories: [Technology, Learning]
tags: [kubernetes, mistakes]     # TAG names should always be lowercase
---

Recently, I tried learning Kubernetes. In a [previous post]({% post_url iangge.github.io/_posts/2024-10-28-kubernetes-concepts %}), I took notes on concepts I should have been familiar with before starting Kubernetes up. I thought I had enough awareness of topics like networking, yaml files, and linux, but they proved to be too challenging for me. 

I thought I could just dive in, so I tried spinning up a cluster through Google Kubernetes Engine (GKE). Even following the tutorials on GKE, I was not entirely sure what I was doing. When I tried setting up a basic web server without the tutorials and exposed my nodes, I clicked the IP address, but the web page was not loading, meaning I definitely configured something incorrectly. 

To make matters worse, I left the clusters running for a few days, so Google Cloud charged some money to my account since my free trial expired. Seeing that charge was quite the scare because I did not want to be charged for something I was struggling to understand. And I did read some posts saying that it was easy to accidentally get charged too much when practicing with cloud services. 

![GKE bill](https://i.postimg.cc/cLLR2fTL/gke-billpng.png)

In hindsight, perhaps it was not the best idea to start with a containerization platform, like Kubernetes, when I still needed to learn how containers themselves worked. I saw some suggestions saying how it may be easier to learn how Docker works first before jumping to Kubernetess. There is also k3s, which is a simplified version of Kubernetes. I think I may need to go even more foundational than that and just try to set up a basic nginx web server in a virtual machine first. 

Like with any subject, it's better to start with the fundamentals instead of going straight into the more complex topics. It reminds me of when I was learning another skill, sketching. I couldn't just start with drawing realism right away. It was necessary to take the time to practice concepts like shapes, planes, line weight, and shadows. 

Although I am a bit embarrassed that Kubernetes humbled me so much, I am glad I was able to have this experience and learn from it. My next project will definitely be something more achievable.