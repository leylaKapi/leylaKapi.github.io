---
layout: post
title: "Note: Fix Ruby on Rails Qt installation"
date: 2014-10-22 23:16:22 +0300
comments: true
categories: ruby rails gem capybara-webkit install built error
---

In your rails project when you run `bundle` command, if you getting below error, 

```bash
/ruby extconf.rb qmake:couldn't find a QT installation of '' Command 'qmake_spec linux-gtt' failed
```

on Ubuntu, you can fix with below command to this error.

```bash
$ sudo apt-get install qt4-dev-tools libqt4-dev libqt4-core libqt4-gui
```
 
 Then you need to install `capybara-webkit` gem to your project with,
 
```bash
gem install capybara-webkit
```

You can search this bug on [stackoverflow](http://stackoverflow.com/questions/11354656/error-error-error-installing-capybara-webkit)

That's all.

I hope your bug is fixed.


