---
title: 'Port forwarding Windows machine to WSL2' # Insert title, categories, and tags + add title to filename
date: 2024-12-09 21:33:18
categories: [Technology, Networking]
tags: [networking, wsl2]  # tag names should always be lowercase
---

## Background
I was setting up Docker containers in WSL2 and wanted to access a self-hosted web service from my local network but was unable to connect to it. After speaking with my mentor, I found that it was because WSL2 required port forwarding.

By default, WSL2 has "a virtualized ethernet adapter with its own unique IP address" ([Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/networking#default-networking-mode-nat:~:text=WSL%202%20has%20a%20virtualized%20ethernet%20adapter%20with%20its%20own%20unique%20IP%20address.)). This virtual ethernet adapter is hidden behind NAT, Network Address Translation, which is why it needs port forwarding to make its services reachable ([jwstanley](https://jwstanly.com/blog/article/Port+Forwarding+WSL+2+to+Your+LAN/#:~:text=Your%20computer%20hides%20WSL2%20behind%20a%20NAT)).


## Identifying IP Address

### Bash command to see ethernet IP address in Linux:
``` bash
ip addr | grep eth0
```
This command pipes `|` the `ip addr` command into `grep`, which performs a text search for `eth0`. `eth0` is the name of the virtualized ethernet adapter in WSL2. 

Example output:
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    inet **172.17.110.111**/20 brd 172.17.111.255 scope global eth0

`172.17.110.111` would be the WSL2 IP address that we're looking for.

## Port Forwarding with Powershell Command

``` powershell
netsh interface portproxy add v4tov4 listenport=<yourPortToForward> listenaddress=0.0.0.0 connectport=<yourPortToConnectToInWSL> connectaddress=<wsl2IPAddress>
```
* `netsh interface portproxy add v4tov4` - creates a new port forwarding rule for listening and forwarding between two IPv4 addresses.
* `listenport=<yourPortToForward>` - specifies which port on the local machine that will listen for incoming connections.
* `listenaddress=0.0.0.0` - tells the system which IP address to listen for.
  * `0.0.0.0` - a wild card IP address that allows the proxy to accept connections from any network interface on the host machine. 
  * Since the service I was hosting is only available locally, external devices can only access it if they are on the same local network as the host machine.
* `connectport=<yourPortToConnectToInWSL>` - port that traffic will be forwarded to on the destination machine. In this case, its the WSL2 virtual machine. 
* `connectaddress=<wsl2IPAddress>` - IP address of the destination machine.

### Example Command
``` powershell
netsh interface portproxy add v4tov4 listenport=3000 listenaddress=0.0.0.0 connectport=3000 connectaddress=172.17.110.111
```
In short, this allows any connection (`listenaddress=0.0.0.0`) received on port 3000 (`listenport=3000`) to be forwarded to the IP address `172.17.110.111` on the same port (`connectport=3000`). 

With this command, it achieves our goal of having the WSL2 service on port 3000 be reachable from outside the WSL2 virtual machine.

### Powershell command to see all forwarded ports:
``` powershell
netsh interface portproxy show v4tov4
```

## Glossary
* **WSL2** - Windows Subsystem for Linux 2, a tool that allows Windows users to "run Linux distributions as isolated containers inside a lightweight virtual machine" ([Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/about))
* **port** - a number that identifies a specific process or a type of network service (e.g. Port 80 for HTTP). This number is used to direct data to a specific service ([Wikipedia](https://en.wikipedia.org/wiki/Port_(computer_networking)#:~:text=In%20computer%20networking%2C%20a%20port,a%20type%20of%20network%20service.))
* **port forwarding** - a network configuration setting that allows external devices to access specific services on a private network by directing incoming traffic on a particular port number to a specific device within that network

## Sources
* [Microsoft Learn - Accessing network applications with WSL](https://learn.microsoft.com/en-us/windows/wsl/networking)
* [jwstanley - Port Forwarding WSL2 to Your LAN](https://jwstanly.com/blog/article/Port+Forwarding+WSL+2+to+Your+LAN/)

## Additional Considerations
* [Setting up automation](https://github.com/microsoft/WSL/issues/4150#issuecomment-504209723)
* [Editing wsl2config networking to be in mirrored mode](https://learn.microsoft.com/en-us/windows/wsl/wsl-config#main-wsl-settings)
