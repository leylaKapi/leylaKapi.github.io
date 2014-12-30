---
layout: post
title: "CSS - Sprite use in SASS"
date: 2014-03-02 16:12:43 +0200
comments: true
categories: CSS ,Sprite, SASS en
---

### What is the CSS sprite? Why do we need to this ?

CSS Sprite means that combine all images in a single image file. The aim is that,
when we upload several image file for use in css or sass file, you should upload to each.

<!-- more -->

**If I give an example, you understand easily: **

We have **10 or more images** and we should use in CSS folder, but this is difficult
 and mixed not only for 10 picture but also 100, 10000 pictures.
you will each image upload 10 times or more for use.
Can you imagine it ?

It's very difficult and mixed !

Instead of this we use CSS Sprite method and fixed this mixed. If you have 10 images,
you should combine  these images in a single page
and pull in this page. Thus, CSS Sprite provide to fast loading  when opened quickly your images of website.

I think your understand CSS Sprite, How use it ?

- Firstly, you create a single page for using images and combine all pictures in single page.

- And now we use CSS or SASS code for pull each picture in single page.

For example, you have a icons' pictures page and we pull each icon on icons' picture page, we
should use CSS or SASS sprite

``` sass
    .icon
        background: url("../images/icon-sprite.png") no repeat
        display: inline-block
    .icon1
        @extend .icon
        background-position: 0px 0px
    .icon2
        @extend .icon
        background-position: 20px 34px
        ...
```

means that above code :

We upload single page on *icon* class and we want to use anything icon in single page which position has these.
but before use *extend* for use *icon* class in *icon1* class. And I want to use another icon, I prepare position of it.
and use in

        background-position

Thanks to CSS Sprite, when opened images in your site, it opened quickly.

That's it !




