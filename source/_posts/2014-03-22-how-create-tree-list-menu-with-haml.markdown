---
layout: post
title: "How create tree - list menu with HAML"
date: 2014-03-22 18:57:27 +0200
comments: true
categories: haml sass coffeescript middleman tree-list en
---

### How to created tree - list menu with haml, sass, coffeescript ?

Firstly, we create middleman project and create

    index.html.haml
    style.css.sass
    application.coffee

then we open `index.html.haml` file and we write your code like this,

``` haml
    --- my code like this ---
    %ul.archive_tool
      %li#tools Car
      %ul.archive_requires
        %li#requires BMW
        %li#requires Mercedes
        %li#requires Toyota
        %li#requires Fiat
      %li#tools Book
      %ul.archive_requires
        %li#requires Ruby
        %li#requires ROR
        %li#requires Thought
      %li#tools Computer
      %ul.archive_requires
        %li#requires iMac
        %li#requires Windows
        %li#requires Linux
        %li#requires Seu
      %li#tools Chair
      %ul.archive_requires
        %li#requires comfortable
        %li#requires uncomfortable
```
then open `style.css.sass` file and write style code

``` sass
      #tools, #requires
        cursor: pointer
      .archive_tool
        margin-left: 1em
        font-size: large
        font-weight: bold
        cursor: pointer
      .archive_requires
        @extend .archive_tool
        margin:
          top: 0
          bottom: 1em
        font-size: medium
        list-style-type: circle
```

then open `application.coffee` file, and

``` coffeescript
    $(document).ready ->
      $(".archive_tool ul").hide()
      $(".archive_tool > li").click ->
        $(this).parent().find("ul").slideToggle()
        return
      $(".archive_requires > li").click ->
        $(this).parent().find("ul").slideToggle()
```
we write this code inside haml, sass, and coffeescript file and then saved all, run this middleman project.


According to edit your own project try to run codes.

I hope, helped you.
