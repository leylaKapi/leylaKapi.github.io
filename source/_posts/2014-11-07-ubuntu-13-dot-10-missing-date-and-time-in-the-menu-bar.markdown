---
layout: post
title: "Ubuntu 13.10 : Missing date and time in the menu bar"
date: 2014-11-07 17:15:38 +0200
comments: true
categories: ubuntu linux date time menu pc bug
---

### Fix date/time in menu bar
 
If you are update or upgrade your pc, you can getting error about menu bar for date - time missing .
For fix this bug, you should write below commands step by step ,

- Re-install `indicator-datetime` run ,

```bash
$ sudo apt-get install indicator-datetime
```

- Re-configure date-time

```bash
$ sudo dpkg-reconfigure --frontend noninteractive tzdata
```

- finally, restart 
 
```bash
$ sudo killall unity-panel-service 
``` 

That' s all. For more information [click page](http://www.maketecheasier.com/date-time-missing-ubuntu-1310/) 

I hope helped to you .