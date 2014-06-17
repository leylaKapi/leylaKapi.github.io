---
layout: post
title: "How can I solve YAML exception reading bug in octopress"
date: 2014-05-20 17:19:18 +0300
comments: true
categories: rake generate exception yaml US-ASCII invalid
---

### Solve the YAML exception reading invalid byte sequence in US-ASCII

When you write

```bash
bundle exec rake generate
```
you get

``` bash
YAML Exception reading 2014-04-28-your_file.markdown: invalid byte sequence in US-ASCII
>>> Compass is watching for changes. Press Ctrl-C to Stop.
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET / HTTP/1.1" 200 93907 0.0215
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /stylesheets/screen.css HTTP/1.1" 200 28107 0.0019
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /images/index.jpeg HTTP/1.1" 200 7466 0.0020
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /javascripts/slash.js HTTP/1.1" 200 1786 0.0010
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /javascripts/jquery.fancybox.pack.js HTTP/1.1" 200 17638 0.0014
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /images/social/twitter.png?1398238298 HTTP/1.1" 200 554 0.0009
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /images/social/github.png?1398238298 HTTP/1.1" 200 581 0.0029
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /images/social/google.png?1398238298 HTTP/1.1" 200 602 0.0034
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /font/fontawesome-webfont.woff HTTP/1.1" 200 23416 0.0034
127.0.0.1 - - [17/Jun/2014 17:08:35] "GET /images/social/rss.png?1398238298 HTTP/1.1" 200 619 0.0069
127.0.0.1 - - [17/Jun/2014 17:08:36] "GET /favicon.png HTTP/1.1" 200 400 0.0009
[2014-06-17 17:08:56] regeneration: 1 files changed
YAML Exception reading 2014-04-28-your_file.markdown: invalid byte sequence in US-ASCII
```
If you want to solve this `rake generate` bug, you can use instead of `bundle exec rake generate`,
you should use

``` bash
LANG=en_US.utf-8 bundle exec rake generate
```
this command, and you can write `rake preview` or `rake deploy`

Fixed the bug.

I hope helped to you.