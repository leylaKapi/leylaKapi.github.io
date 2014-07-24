---
layout: post
title: "Rails devise gem generator error"
date: 2014-07-24 15:36:48 +0300
comments: true
categories: rails devise gem Gemfile error bug  generate install
---

### How to fix rails devise gem generate bug?

You use `devise` gem for add admin page or user page to your project. When you generate to your devise gem,
you' re getting error to your project,  like ;

```bash
$ rails g devise:install
Could not find generator devise:install
```
If you get like ths error, you can fix for these order,

- Open your `Gemfile`, add `gem 'devise'` then,
- Open terminal, run  `bundle`
- Open you computer search bar, Search on your computer to `Disk Utility`
- Select you Disk For example: `Macintosh HD`
- Then click on `Repair Disk Permissions`
- Waiting approximately 15 minutes, then **restart** your computer.

That' s all.

I hope fixed your bug.