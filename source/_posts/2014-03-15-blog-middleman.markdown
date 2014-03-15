---
layout: post
title: "Middleman Blog"
date: 2014-03-15 17:05:21 +0200
comments: true
categories: middleman, blogging
---

### How to create middleman blog for middleman project?

- Middleman supported blogging in your project or your blog.

If you create a blog, I think you should with middleman blogging. I hear, you say ' WHY ? '

WHY?

- Easy to use,
- Embed in your project easily

...

**Let's learn blogging with middleman blog**

Firstly, if you use middleman blog in your project, this means if you use blogging in your website or application,
you  should go to path of your project, open and write above command.

you write in *Gemfile* :

        gem ' middleman-blog '

and then, in *config.rb*

        activate :blog do |blog|
        ---
        set

and when you write these command in your project, open terminal or console  write

        bundle install                  #install gems
        bundle exec middleman server    #run your blog in your project

If you want to set up from the rough, what you want to open to path, and write in terminal

        middleman init blog_name --template=blog

When you write this command you can see, many file created for your blo.

Now open created blog, you should see directories,

        images
        javascripts
        stylesheets


files,

        index.html.erb
        layout.erb
        calendar.html.erb
        tags.html.erb
        feed.xml.builder
        2012-01-01-example-article


- Middleman provide  many tags and properties for your blog, if you want to organize, you can open *config.rb* and organize these, and see.
- If you want to organize style for blog, you should write in stylesheets and javascript directories, with CSS3 and Jquery ;)
- If you don't want to use **.html.erb** files, you can translate to **.html.haml** in [html2haml](http://html2haml.heroku.com/).

And use this.

- If you want to use blog in your middleman project, you should create new layouts, and *index.html.haml* in your blog directory,
different from your middleman project.
and we write code in this.

Yep ! you create new blog and prepared write new article your blog,

Let's start :)

    middleman article article_name

When write this command, middleman created new article file, blogging in this file, but we write with markdown inside created article file.

When you write your article you run project with

    bundle exec middleman server


after the

    bundle install

run and see what you can do ?

That's it.