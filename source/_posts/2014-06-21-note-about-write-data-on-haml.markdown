---
layout: post
title: "Note about write 'data' on  haml ?"
date: 2014-06-21 17:13:02 +0300
comments: true
categories: haml attribute data toggle target en
---

Write `data` attributes on HAML ?

if you write on haml and use `data` attribute,

```haml
%a{"data-slide" => "prev", href: "#carousel-example-generic", role: "button"}
```

<!-- more -->

but you should style of write can be like below :

```haml
%a{:data => {:slide => 'prev'}, href: '#carousel-generic'}
```

OR

```haml
%li{"data-target" => ".nav-collapse", "data-toggle" => "collapse"}
```

like below

```haml
%li{:data => {:toggle => 'collapse', :target => '.nav-collapse'}}
```

If you want, you can look at [this page](http://stackoverflow.com/questions/10321632/haml-how-do-i-create-this-line-of-html) for details .

That's all

I hope helped to you.