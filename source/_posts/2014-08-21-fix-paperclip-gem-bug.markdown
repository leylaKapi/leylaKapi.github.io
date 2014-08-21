---
layout: post
title: "Fix paperclip gem bug"
date: 2014-08-21 13:49:45 +0300
comments: true
categories: rails ruby gem paperclip bug image upload
---

### How can I fix `paperclip` error ?

When you use `paperclip` gem, if you are getting like this bug
 
```ruby
Photo could not run the identify command. Please install ImageMagick.
```

You can fix this bug with

```bash
sudo apt-get autoremove
```
or you can make

```bash
sudo apt-get install imagemagick.
```

I suggest the second command, because if youcan make `autoremove` you can get error again.

That' s all.