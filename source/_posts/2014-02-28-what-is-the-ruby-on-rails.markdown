---
layout: post
title: "What is the Ruby On Rails?"
date: 2014-02-28 18:25:39 +0200
comments: true
categories: ruby, rails en
---

## What is the Ruby On Rails and How install?

**Ruby**

- Object oriented programming language
- Created in 1995 by Matz
- Used for many purpose, not only web app.

<!-- more -->

**Ruby on Rails**

- Open source, web applications framework.
- Written in Ruby
- Release as open source in 2004

#### How install Ruby On Rails?

Firstly, you have to install ruby, and then start install rails.
Is there ruby in your pc? Look at!

``` bash
    ruby -v
    # ruby 2.0.0p353 (2013-11-22 revision 43784) [x86_64-darwin13.0.0]
```


I hear , 'my pc don't has ruby.' Dont worry, when you are going to [download ruby](https://www.ruby-lang.org/en/).
Now, we install the ruby after then

``` bash
    gem update system
```

start install rails framework.

``` bash
    gem install rails
```

rails was install and which version?

``` bash
    rails --version  or rails -v
    # Rails 4.0.2
```

Yeah!, now pc has ruby and rails.

Then we can start to create Ruby on Rails project.

``` bash
    rails new start_rails_project
```

Created rails project. That's very easy!

Go to rails project path and install bundler

``` bash
    gem install bundle
    bundle install
```


Now, you can write your ruby code on rails framework . How run your rails applications ?

We should write

        rails server or rails s

In terminal, you should see this url 'http://0.0.0.0:3000' and copy this, paste on your search bar.

You can see Ruby default information page

![Default page](../images/rails_welcome.png)

Yeah, Installed Ruby On Rails and started to code your rails applications.

If you want to learn more, you should visit [rubyonrails](http://guides.rubyonrails.org/).














