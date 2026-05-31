---
title: 'Recap of Senior Year Projects'
date: 2026-04-30 11:09:06
categories: [Personal, Blogging]
tags: [education, presentations, college]
image:
  path: 'images/CPP-Graduation-Ceremony.jpg'
  alt: "I low key have a bachelor's degree."
---

Hello blog, it’s been a while since I’ve posted, but I promise I have been active. This last school year has been my senior year at Cal Poly Pomona, so I’ve been trying to gain as much experience as I can. This past month I received my Bachelors of Science in Computer Information Systems from Cal Poly Pomona as well as my Network+ certification!

![My Network+ exam results](https://media.licdn.com/dms/image/v2/D4E22AQEiVUuNUQc1aQ/feedshare-shrink_800/B4EZ56GDEpH8Ag-/0/1780164866789?e=1781740800&v=beta&t=fv5E7oWa92APlH8t-PnpMEkJJZroA6biDfdzF93Y6bw)

There were a lot of great projects I got to be a part of, so I thought I’d make a list that compiled them all.

## 1. CCDC Windows Security Team Member and Devving (Fall-Spring)
Last summer, I tried out for the Cal Poly Pomona CCDC (Collegiate Cyber Defense Competition) team and landed a spot on the team as a secondary Windows team member. We sadly did not make it to regionals, but I am grateful for the experience to compete. I was able to meet other dedicated cybersecurity students and get more practice with PowerShell, firewall rules, networking concepts, and hardening techniques against an active red team. 

![CCDC network diagram](https://i.postimg.cc/ZnGXfbC2/mindmend-network-diagram.png)

As part of the competition, our team was also able to design our own environment for an invitational. Using draw.io, I made the network diagram for the environment and worked on some of the Windows machines. The theme was an AI therapy company and all the virtual machines were named after Greek gods or parts of the brain. For example, hephasetus was the router, the .2 denoted the last octet of its IP address, and “SSH” was the scored service on that box. This diagram intentionally did not display the interdependencies between boxes because a large part of the competition is learning how all the different services are connected and how to remedy their security vulnerabilities. (Hint: Many services are typically reliant on databases)

This environment is available to download [here](https://archive.wrccdc.org/images/2026/wrccdc-2026-invitationals-3/) if you’d like to test it out for yourself!
 

## 2. LEAP - Project Coordinator Fellow (Fall-Spring)

[LEAP](https://www.leap.org/emerge) (Leadership Education for Asian Pacifics) is another program I was part of. While it was not an outright technical fellowship, I found their career development sessions valuable. We were also assigned a community impact project to complete as part of the program. Our project was a video interview series that focused on addressing the bamboo ceiling, which refers to the systemic barriers that Asian American Pacific Islander professionals face when advancing in their careers. I served as one of the Project Coordinator Fellows where I organized communications between the different teams of the project, such as the interviewers, finance team, and the LEAP staff members to ensure the project stayed on track. 

Right now we’re wrapping up the project, but I’ll update this post with the final results in June!
 
## 3. SWIFT Competitions Officer (Fall-Spring)

![Flyer for King of the Hill, one of SWIFT's cyber competitions](https://scontent-lax7-1.cdninstagram.com/v/t51.82787-15/582730503_18540838156048045_4018715225926599883_n.jpg?stp=dst-jpg_e35_p640x640_sh2.08_tt6&_nc_cat=101&ig_cache_key=Mzc2OTQ2MzcwNzE0MzMzMTk0NA%3D%3D.3-ccb7-5&ccb=7-5&_nc_sid=58cdad&efg=eyJ2ZW5jb2RlX3RhZyI6IkZFRUQueHBpZHMuMTM1MC5zZHIucmVndWxhcl9waG90by5DMyJ9&_nc_ohc=goOKU0L_F2wQ7kNvwEuaOs8&_nc_oc=AdoyDOO-1NcijmZyvH2w1szcXx83GJtP606V1HRDixKS9YNSYZbFumnPEN6jfHfsDb4&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent-lax7-1.cdninstagram.com&_nc_gid=UrBkQBv-AoerYY9J6Yc2ow&_nc_ss=7a22e&oh=00_Af9v5nQ-lhumQ-90uj3CccuPwlgNzLBKu64ht-tom6Ut2g&oe=6A216E73)

Outside of that CCDC invitational, I also helped build competitions for SWIFT (Students With an Interest In the Future of Technology), one of the cybersecurity clubs at Cal Poly Pomona. [My last post was on SCARE in October]({% link _posts/2025/2025-10-30-SCARE-2025-Windows.md %}), a Halloween themed pen-testing Capture-The-Flag competition!

Similar to CCDC, I mainly developed the Windows boxes, so I had to intentionally add security vulnerabilities for competitors to either defend against or exploit, depending on the type of competition. These vulnerabilities ranged from more simple ones, such as having accounts that are easily password cracked, anonymous log-ins enabled, [web shells](https://champlain-cyberlabs.github.io/cyberlabs/windows/windows-server-webshells/windows-server-webshells.html), and weak policies on remote access services (RDP, SSH), to more complex ones like [ESC](https://www.hackingarticles.in/category/active-directory-certificate-attack/) attacks. 


## 4. STORM CyberAI Research Symposium (January)

![Me presenting at the STORM CyberAI Research Symposium](https://media.licdn.com/dms/image/v2/D5622AQE78AarSynnMw/feedshare-shrink_800/B56Zwk9ekeHIAk-/0/1770146622184?e=1781740800&v=beta&t=uAQb6e6jd1Eh_C-UB1KiwQsNA1vMqF2XZhuLxWjQmGI)

If you’re curious about cyber competitions, I made a presentation with an overview of them here. As a member of the STORM (Security Technology Operations Research Monitoring) cybersecurity career development program at Coastline College, I had the opportunity to present at their research symposium. 

I mainly went over the different types of cybersecurity competitions (defense, offense, Capture-The-Flag style) as well as some national level competitions and the in-house competitions we host through SWIFT at Cal Poly Pomona. Sharing my experiences in both competing and designing cyber competitions was great. 

Learning new concepts in cybersecurity can be intimidating, so I try my best to familiarize people who are newer. I love sharing resources and knowledge about different technologies with others to make it easier for them. Presenting at the STORM symposium reaffirmed my passion in education and using technology to help others. 🙂

* [Full Presentation Here](https://github.com/iangge/iangge.github.io/blob/main/presentations/A%20SWIFT%20Overview%20of%20Cyber%20Competitions.pdf)

## 5. SCALE (March)

![Attending the SCALE conference with some people from SWIFT](https://media.licdn.com/dms/image/v2/D5622AQG7ZOtX4juacw/feedshare-shrink_800/B56Z0Zyc0IJMAc-/0/1774254149163?e=1781740800&v=beta&t=ci0JFbqu2WTLtLnHQqgJtF-Mpem0uMAtzISSr5yk86Q)

Speaking of education, I was able to attend SCALE (Southern California Linux Expo) a few months ago with some of my CCDC teammates and their mentees. My favorite talk was from a professor who talked about his challenges and successes with integrating open source technology in his curriculum.

He also talked about how people were selling his students’ data on the dark web but no one wanted to buy it because community college student info is not in demand lol. Many of his students were worried about job security with the rise of AI, which is a difficult issue to tackle on top of the additional struggles they faced as community college students. As a community college transfer myself, it was validating to hear him acknowledge those topics. Understandably, he did not have all the answers and instead focused on educating as best he could to prepare his students for the future of the workforce. 

Something fun he brought up was how some of his students built databases for things like Minecraft recipes or keeping track of dog breeds as part of their class projects. I found his talk to be very inspiring, and it gave me ideas on different ways to incorporate open source software as an educational tool. Overall, I appreciated how this conference highlighted free and easily available technology. 

## 6. Insecure Deserialization in Ren’Py (April)

![Presenting at the game dev club meeting about insecure deserialization in Ren'Py](https://i.postimg.cc/fySRtRGC/ID-Ren-Py-Presentation.png)

In addition to being a Competitions Officer with SWIFT, I was also assigned a SWintern (SWIFT intern) project. SWinterns assist the executive board and get to present on a cybersecurity topic of their choice. I chose to present on insecure deserialization in Ren’Py. 

Serialization is the process of turning an object into a byte stream to make it easier to store or transmit. Deserialization is the reverse of that process, which turns the byte stream back into the original object. However, insecure deserialization occurs when attacks are able to run arbitrary code to a deserializer (OWASP entry). 

Ren’Py, a text-based video game engine, uses this process to store its save files. User [swoops on GitHub](https://github.com/swoops/video-game-save-file-trojans) was able to figure out a way to use insecure deserialization to insert trojan viruses that disguised themselves Ren’Py save files. 

I presented on this topic as my SWintern project showcased it at a Game Development Club meeting at Cal Poly Pomona so it could also be a collaboration event! It was fun to bridge the two clubs together through the overlap between cybersecurity and game development.

<iframe width="560" height="315" src="https://www.youtube.com/embed/-UxTTJZsweI?si=ryNEWker9UOBrY7H" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

* [Full presentation here](https://docs.google.com/presentation/d/1FXXxOd-i3bjaVakYiCwAoZFk6UoED0n5U-j--bBtmeg/edit?slide=id.p1#slide=id.p1)

## 7. Network Anomaly Detector - AI Fair (April)

My last project with SWIFT was to table at our school’s AI Fair. This project involved another intersection between two fields, but this time it was cybersecurity and machine learning (ML). I found a GitHub repository that used machine learning algorithms to analyze network traffic and detect anomalies. As a bonus, the repository is able to be self-hosted and you can even upload your own CSV files of network traffic.

Anomaly detection is a subfield of AI and machine learning that involves finding any data that is “out of the ordinary”. For example, anomaly detection is used in finance to flag possibly fraudulent transactions. In the context of this project, the repo uses it to find suspicious network traffic, like unusual port usage or large data transfers. We made a flyer below to explain and visualize how the 3 ML algorithms Isolation Forest, Local Outlier Factor, and One-Class NVM are used to detect anomalies.

![SWIFT AI Fair flyer on the network anomaly detector](https://media.licdn.com/dms/image/v2/D5622AQG1-prx0oZt6A/feedshare-shrink_800/B56Z2YUmdzH4Ac-/0/1776377030798?e=1781740800&v=beta&t=VZHEFuEFtg8xfLFEwSzfhQA75AIr_tTLcZohFSn3XlA)

 
## Reflection and Thank You’s

This was quite the final school year. I was so anxious about what post-grad would look like for me, but I’m learning to take it day-by-day. Fortunately, I have found work as a computer technician for a Department of Rehabilitation IT vendor. Despite my undergrad ending, I will still be taking cyber classes with STORM and continue looking for more learning opportunities. My goals remain the same: I want to keep finding ways to use computers as a tool to support others and provide resources, but I understand that I may need to get a bit creative about it during these times.

I am so incredibly thankful to everyone that has supported me through this journey. Earning a bachelor's degree is a huge undertaking and I would not have been able to do it without the encouragement of these communities and individuals:

* [Slava](https://slava.lol/) for encouraging me to start this blog
* Jeff
* [Dylan](https://dtsec.us/)
* Judy
* Amara
* [SWIFT](https://www.calpolyswift.org/)
* [CCDC Team](https://cysec.team/)
* [STORM](https://stormcyber.org/) and Dr. West
* [LEAP](https://www.leap.org/) and all my LEAP mentors
* [Miramar College Career Center and Outreach departments](https://sdmiramar.edu/)
* Cherrie and the [CPP Career Center Team](https://careercenter.cpp.edu/)
* APO
* Horse Library
* Gomeez Homies
* Eusebros
