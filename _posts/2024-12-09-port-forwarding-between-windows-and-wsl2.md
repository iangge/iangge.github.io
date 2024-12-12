---
title: 'Port forwarding Between Windows and WSL2'
date: 2024-12-09 21:33:18
categories: [Technology, Networking]
tags: [networking, wsl2]
---

## Background
I was setting up Docker containers in WSL2 and wanted to access a self-hosted web service from my local network but was unable to connect to it. After speaking with my mentor, he showed me that it was because WSL2 required port forwarding.

By default, WSL2 has "a virtualized ethernet adapter with its own unique IP address" ([Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/networking#default-networking-mode-nat:~:text=WSL%202%20has%20a%20virtualized%20ethernet%20adapter%20with%20its%20own%20unique%20IP%20address.)). This virtual ethernet adapter is hidden behind NAT, Network Address Translation, which is why it needs port forwarding to make its services reachable ([jwstanley](https://jwstanly.com/blog/article/Port+Forwarding+WSL+2+to+Your+LAN/#:~:text=Your%20computer%20hides%20WSL2%20behind%20a%20NAT)).


## Identifying IP Address

### Bash command to see ethernet IP address in WSL2 Linux distro:
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
  * `0.0.0.0` - a wild card IP address that allows the proxy to accept connections from any network interface *on the Windows host machine*. 
  * Since the service I was hosting is only available locally, external devices can only access it if they are on the same local network as the host machine.
* `connectport=<yourPortToConnectToInWSL>` - port that traffic will be forwarded to on the destination machine. In this case, its the WSL2 virtual machine. 
* `connectaddress=<wsl2IPAddress>` - IP address of the destination machine.
  * `(wsl hostname -I)` can replace `<wsl2IpAddress>` to automatically retrieve the IP address.

### Example Command
``` powershell
netsh interface portproxy add v4tov4 listenport=3000 listenaddress=0.0.0.0 connectport=3000 connectaddress=172.17.110.111
```
In short, this allows any connection on the host machine's IP address (`listenaddress=0.0.0.0`) received on port 3000 (`listenport=3000`) to be forwarded to the IP address `172.17.110.111` on the same port (`connectport=3000`). 

For example, if the host machine's private IP address is `192.168.254.11`, connecting to `192.168.254.11:3000` on an external device would forward that port to the web service hosted on `172.17.110.11:3000` inside of WSL2. 

With this command, it achieves our goal of having the WSL2 service on port 3000 be reachable from outside the WSL2 virtual machine.

> Keep in mind that this only makes the WSL2 service open to external devices that are on the *same* local network, not the entire internet. 
{: .prompt-info }

### Powershell command to see all forwarded ports:
``` powershell
netsh interface portproxy show v4tov4
```
### Example output

| Listen on ipv4: |      | Connect to ipv4: |      |
| :-------------- | :--- | :--------------- | :--- |
| Address         | Port | Address          | Port |
| 0.0.0.0         | 3000 | 172.17.110.11    | 3000 |

I created a diagram to illustrate the points above so we can visualize how the port forwarding works. 

### Diagram

![WSL2-Port-Forwarding-Diagram.png](https://i.postimg.cc/Znf8Dkzr/WSL2-Port-Forwarding-Diagram.png)

## Automating WSL2 Firewall Rules and Port Forwarding

If the IP address of the destination machine changes, you would have to add the Powershell command every time. 

Firewall rules are another consideration to take into account as Windows firewall may automatically block the ports you want to forward.

Luckily, github user edwindijas shared a Powershell script that automates updating the port forwarding rules and the firewall rules. ([Source](https://github.com/microsoft/WSL/issues/4150#issuecomment-504209723))

``` powershell

$remoteport = bash.exe -c "ifconfig eth0 | grep 'inet '"
$found = $remoteport -match '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}';

if( $found ){
  $remoteport = $matches[0];
} else{
  echo "The Script Exited, the ip address of WSL 2 cannot be found";
  exit;
}

#[Ports]

#All the ports you want to forward separated by coma
$ports=@(80,443,10000,3000,5000);

#[Static ip]
#You can change the addr to your ip config to listen to a specific address
$addr='0.0.0.0';
$ports_a = $ports -join ",";

#Remove Firewall Exception Rules
iex "Remove-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' ";

#adding Exception Rules for inbound and outbound Rules
iex "New-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' -Direction Outbound -LocalPort $ports_a -Action Allow -Protocol TCP";
iex "New-NetFireWallRule -DisplayName 'WSL 2 Firewall Unlock' -Direction Inbound -LocalPort $ports_a -Action Allow -Protocol TCP";

for( $i = 0; $i -lt $ports.length; $i++ ){
  $port = $ports[$i];
  iex "netsh interface portproxy delete v4tov4 listenport=$port listenaddress=$addr";
  iex "netsh interface portproxy add v4tov4 listenport=$port listenaddress=$addr connectport=$port connectaddress=$remoteport";
}
```

## Alternative Solution - Mirrored Mode

Another solution to making WSL2 servers accessible from your local network is to create a [.wslconfig file](https://learn.microsoft.com/en-us/windows/wsl/wsl-config#wslconfig) and set `networkingMode=mirrored`.

This mode replaces the defaulty NAT setting by having all Windows network interfaces *mirrored* onto the Linux distributions in WSL2. Network services between Windows and WSL2 can now be accessed seamlessly without setting up port forwarding.

However, I set up port forwarding so I could familiarize myself with the concept. Through either port forwarding or using mirrored mode, my self-hosted services in WSL2 are made available to my local network.

## Glossary
* **WSL2** - Windows Subsystem for Linux 2, a tool that allows Windows users to "run Linux distributions as isolated containers inside a lightweight virtual machine" ([Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/about))
* **port** - a number that identifies a specific process or a type of network service (e.g. Port 80 for requesting web pages from a web server). This number is used to direct data to a specific service ([Wikipedia](https://en.wikipedia.org/wiki/Port_(computer_networking)#:~:text=In%20computer%20networking%2C%20a%20port,a%20type%20of%20network%20service.))
* **port forwarding** - a network configuration setting that allows external devices to access specific services on a private network by directing incoming traffic on a particular port number to a specific device within that network
*  **network interface** - the point of interconnection between a computer and a private or public network ([Oracle](https://docs.oracle.com/javase/tutorial/networking/nifs/definition.html#:~:text=A%20network%20interface%20is%20the,can%20be%20implemented%20in%20software.)).
   *  Can be hardware (network cards) or software (virtual machines)
   *  Each network interface has its own unique IP address

## Sources
* [Microsoft Learn - Accessing network applications with WSL](https://learn.microsoft.com/en-us/windows/wsl/networking)
* [YouTube - WSL2 Networking by David Bombal](https://www.youtube.com/watch?v=yCK3easuYm4&ab_channel=DavidBombal)
* [Github - WSL2 NIC Bridge mode 🖧 Has TCP Workaround🔨](https://github.com/microsoft/WSL/issues/4150)
* [jwstanley - Port Forwarding WSL2 to Your LAN](https://jwstanly.com/blog/article/Port+Forwarding+WSL+2+to+Your+LAN/)
* [YouTube - How does mirrored mode work in WSL?](https://www.youtube.com/watch?v=bvW_2rXCOQw&ab_channel=MicrosoftDeveloper)
* [YouTube - Advanced setting configuration in WSL](https://www.youtube.com/watch?v=dKBU5gWnBvc&ab_channel=WolfDynamicsWorld-WDW)
