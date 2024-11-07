---
title: Setting up a Basic Nginx Web Server on Windows
date: 2024-11-2 # Enter date here and in file name
categories: [Technology, Tutorial]
tags: [nginx, windows]    # TAG names should always be lowercase
---

Hello, I will be setting up a basic nginx web server on Windows as practice for learning some concepts about web servers and networking. Feel free to follow along. 

## 1. Downloading Nginx on Windows

Download Nginx for Windows from their homepage [here](https://nginx.org/en/download.html). The link I used is highlighted in green in the image above. The file will download as a zip.

![nginx-download-homepage.png](https://i.postimg.cc/vT373dD3/nginx-download-homepage.png)

##  2. Unzip the Nginx folder

For simplicity's sake, I unzipped the file and placed it onto my desktop.

## 3. Run nginx.exe

Double-click nginx.exe. It should now be running in the background and show up on task manager. (You may need to adjust firewall settings) 

<!-- Ooooo html works in markdown too. Yay! -->
<img src="https://i.postimg.cc/TPcS7sbX/Windows-protected-your-PC-against-nginxpng.png"> 

![Screenshot-2024-11-04-150320.png](https://i.postimg.cc/zBrzW4rZ/Screenshot-2024-11-04-150320.png)

## 4. Go to localhost in a web browser

Type **localhost** or **127.0.0.1** into the search bar of a browser. The home page for nginx should now appear:

![Screenshot-2024-11-04-145109.png](https://i.postimg.cc/fbLzvY35/Screenshot-2024-11-04-145109.png)

127.0.0.1 or localhost is the loopback IP address of your own computer, which is used for testing and accessing websites locally before putting them on the internet. 

Nginx has now been set up to be used as a local, static web server. This is similar to how I set up and test this blog, except I use Visual Studio Code, Jekyll, and have it hosted through Github pages.

## 5. Edit the html files

Go to the nginx directory:

![nginx-file-directory.png](https://i.postimg.cc/6QM4CVQW/nginx-file-directory.png)

Then go to the html folder, right click the index.html file, and edit it in Notepad. Using basic html, I edited the file to have it say, "Hello this is a website."

![index-html-nginx.png](https://i.postimg.cc/mZ6L7LGG/index-html-nginx.png)

index.html is typically the name for the website's homepage.
