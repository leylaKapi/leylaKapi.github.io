---
layout: post
title: "How is the internet working and what is the protocols"
date: 2014-04-20 02:00:37 +0300
comments: true
categories: internet working protocols HTTP HTTPS TCP UDP SSL TLS URL
---

###How is the internet working ?

Internet like in real life, There are two sides for internet communication. While one of this is making request, another of this
have to respond to this request. This loop is named


    request - respond

or


    client-server

Web relation client - server


**client** => **server**
         request


**client** <= **server**
         respond

Now, I try to explain when it occur this relation, Which process do occur?

- This process can be with protocols, protocols What?

  - Protocols, like rules, this means that ; there are rules for connection two computer(client-server) each other to
   internet.This rules are named protocols.

- There are many type of Protocols like HTTP(Hyper Text Transfer Protocols), TCP(Transmission Control Protocols),
UDP(User Dtagram Protocol), SSL(Secure Socket Layer), TLS(Transport Layer Security),FTP(File Transfer Protocols) ...etc.

  I try to explain several of the above protocols.

- HTTP (Hyper Text Transfer Protocol)

HTTP is which distribute in a source, which access to everyone for apply to hyper information system like text, graphics, video ..etc
In brief HTTP is a set of rules.
Also The means of name that, When we transferring text using this protocols.

In World using the default port number, showing like this *:80* . When we write url, automatically added to ending of URL,but it
is hidden.

- TCP (Transmission Control Protocol)

TCP provide to security of data exchange. The clients create a contact with each other, in this contact provide to data exchange
and data transmitted in the correct order. Then TCP controlled to data whether it has reached by sending a message.
 It is very slow, because controlled data step by step.

- UDP (User Datagram Protocol)

UDP is fast transmission data according to TCP but unsafe data . The aim is fast. If we compare with TCP. TCP and UDP similar
but TCP is very slow. If sending *.rar* or *.zip* files, should use TCP because data is important. if you send to video,
should use UDP because fast is important.

- SSL (Secure Socket Layer)

SSl development for provide secuirty and privacy of transmission data on network. In SSL, before sending to information
encrypted, only decrypted by computer which receiver. This provide privacy data exchange.

    https  # 's' means that security .

- TLS (Transport Layer Security)

TLS similar to SSL. Differences to SSL is that, process of connection occur simple and without encryption, when data transmission can be done,
security certificate engaged and then can be security.

- URL (Uniform Resources Locator)

   access_method//:server_name[:port]/site

I hope this article help you for understanding internet works
