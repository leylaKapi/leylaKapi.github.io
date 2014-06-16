---
layout: post
title: "Scaffolding in Rails"
date: 2014-04-25 00:21:58 +0300
comments: true
categories: scaffold rails rake
---

In this post, I try to explain scaffolding in rails shortly.
Firstly, Let's create rails project

``` bash
rails new blogging
cd blogging
```

Now, we created rails project and enter inside of project.
We need to create scaffold,

``` bash
rails generate scaffold Information first_name second_name date_time:date city:boolean
```
- We create Information model, in this model
 - Type of first_name and second_name is string.
 - Type of date_time is date, this provide to create date.
 - Type of city is boolean, this provide to create checkbox.

then we need to migrate for this reason,

``` bash
rake db:migrate
```

Then, If you want change your home page(index.html), you should open in your app,

    config/routes.rb

this path and write

    root :to => 'information#index'

save and run

``` bash
rails s
```
opened [http://localhost:3000/](http://0.0.0.0:3000/)

That's all.