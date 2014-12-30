---
layout: post
title: "How to deploy your project to Heroku ?"
date: 2014-06-17 16:10:38 +0300
comments: true
categories: project rails heroku deploy en
---

### Deploy to Heroku

**You have a rails application, and finished your application want to deploy with `Heroku`,  HOW ?**

You should open your rails application, and in your application find `Gemfile`. Open Gemfile write this command

``` ruby
gem 'heroku'
```
in your terminal

<!-- more -->

``` bash
bundle install
```
Come again to `Gemfile`, instead of

``` ruby
gem 'sqlite3'
```
write

``` ruby
group :development, :test do
    gem 'sqlite3'
end
group :production do
    gem 'pg'
end
```
in terminal

``` bash
bundle install
```
Then go to [Heroku](https://www.heroku.com), you should create a free account on heroku. When you create account you can see `download toolbet` button,
you can run this in your computer. Open your terminal and write

``` bash
heroku login
```

When you write this command, heroku want to your heroku account information, entered this

``` bash
~  heroku login
Enter your Heroku credentials.
Email: leylakapi@gmail.com
Password (typing will be hidden):
Found existing public key: /Users/leylakapi/.ssh/id_rsa.pub
Uploading SSH public key /Users/leylakapi/.ssh/id_rsa.pub... done
Authentication successful.
```

After login, you should run with order

``` bash
git add .
git commit -m "Your commit write here"
heroku create
```

When you `heroku create` you should see like

``` bash
Creating pacific-beyond-5670... done, stack is cedar
http://pacific-beyond-5670.herokuapp.com/ | git@heroku.com:pacific-beyond-5670.git
Git remote heroku added
```
then

``` bash
git push heroku master
```
If you want to see in our browser you should use

``` bash
heroku open
```
That's all.

I hope helped to you.