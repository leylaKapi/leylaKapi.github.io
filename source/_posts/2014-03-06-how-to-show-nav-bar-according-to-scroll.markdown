---
layout: post
title: "How to show nav-bar according to scroll"
date: 2014-03-06 19:30:31 +0200
comments: true
categories: javascript, jquery, CSS, HTML en
---


### Change CSS class after scrolling ...px down

I want to change menu or nav-bar according to scroll, How I can do this ?

In this article, I can try to explain with an example.

<!-- more -->

Please, write these code block on your project or created a new project and try to these .
Yep!, Let's learn step by step :)

Firstly, Created HTML file in your project and write below code block,

    index.html

    <div id = 'navigation'> Home </div>
        <h1> Welcome to Change scroll according to ...px </h1>
        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
         irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
         id est laborum </p>

then wrote this code block in your HTML file. Let's create CSS file in your project for style of your project.

    style.css

    #navigation {
            width : 100px;
            height : 100px;
            background-color:blue;
            position: fixed;
            display: none;
    }


this last step but the most important step for scrolling to navigation. Create javascript file for your animation of your project


    application.js

    $(document).scroll(function() {
            $('#navigation').toggle($(this).scrollTop() > 1000);
    });


Wrote in your project these block and try to run project and What are you seeing in your project ?

That's easy!