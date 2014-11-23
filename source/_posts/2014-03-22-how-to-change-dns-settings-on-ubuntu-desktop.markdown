---
layout: post
title: "How to change DNS settings on Ubuntu Desktop?"
date: 2014-03-22 15:17:32 +0200
comments: true
categories: DNS, ip en
---

### How to change DNS settings (ip address) or How to set up Google public DNS for Ubuntu Desktop?

Firstly, we should look at Google Public DNS.

##### What is the Google Public DNS?

Google DNS created by Prem Ramaswami at 2009 . Google Public DNS provide to free DNS settings.
Without DNS, it wil be difficult to know IP address of websites which visit daily.

##### How to change DNS settings ?

Open terminal in Ubuntu Desktop with

    CTRL + ALT + T

and run this command

    sudo gedit /etc/dhcp/dhclient.conf

opened gedit file and find

    prepend domain_name_servers

then changed to

    prepend domain_name_servers 8.8.8.8, 8.8.4.4;

and save - restart computer.

Now, you should go to

    System settings -> Network

or

    Right click on Network Manager
        Edit Connection
            Wired Connection 1


select Wired

    IPv4 Settings

change *Method* to

    Automatic (DHCP) address only

and restore DNS

    DNS Servers: 8.8.8.8, 8.8.4.4

then save.

I try to explain change DNS Server and set up google public DNS on Ubuntu Desktop. I wish help you.

That's it.

I try to explain shortly DNS, I hope, this article helped to you .
