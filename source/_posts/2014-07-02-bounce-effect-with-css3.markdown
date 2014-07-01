---
layout: post
title: "Bounce effect with CSS3"
date: 2014-07-02 00:56:56 +0300
comments: true
categories: bounce effect animation font-awesome css3 haml
---

### How to give effect to arrow like bounce with CSS3 ?

You want to use arrow in your web-page with animation like bounce ball. `HOW ?`

Firstly, you should use this haml in your code, where you want to use `section`
in your page,

```haml
%p.scroll-down
   .bounce
     %a{href: '#section2'}
        %i.fa.fa-angle-double-down.fa-5x
```

In your sass you should use

```sass
.scroll-down
    text-align: center
    position: absolute
    z-index: 2
    margin: 0 auto
.bounce
  position: fixed
  left: 50%
  margin-top: -25px
  margin-left: -25px
  height: 50px
  width: 50px
  -webkit-animation: bounce 1s infinite
@-webkit-keyframes bounce
  0%
    bottom: 5px
  25%, 75%
    bottom: 15px
  50%
    bottom: 20px
  100%
    bottom: 0
```

That's all !
I hope helped to you.