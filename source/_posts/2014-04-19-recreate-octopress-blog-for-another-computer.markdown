---
layout: post
title: "Recreate octopress blog for another computer"
date: 2014-04-19 22:13:18 +0300
comments: true
categories: octopress recreate computer
---

###How I recreate octopress blog another computer ?

I formatted my computer and then for my octopress blog *What can I do ?* **reinstall** or **WHAT?**

In this post I try to explain, if you have a new computer (after format, buy new computer...etc)but you have octopress blog
how to entegrated each other?

Before starting explain it in this article, I try to explain set up octopress, if you forget this, you can find it easily in another
blog post or you can look at [Octopress Setup guide](http://octopress.org/docs/setup/) .

Now recreate a local repo for octopress

-Clone your blog to the new machine

```bash
git clone -b source git@github.com:username/username.github.io.git octopress
```

Then clone the master branch to the _deploy

```bash
cd octopress
git clone git@github.com:username/username.github.io.git _deploy
```

then run *rake*

```bash
gem install bundler
rbenv rehash
bundle install
rake setup_github_pages
```

Then we ask to you repo url like

```
Enter the read/write url for your repository
(For example, 'git@github.com:your_username/your_username.github.io.git)
           or 'https://github.com/your_username/your_username.github.io')
Repository url:
```


Write your like this *Repository url: git@github.com:username/username.github.io.git*

Then you should write these command :

```bash
rake generate
git add .
git commit -m "Write comment here"
git push origin source
rake deploy
```
then you can write

```bash
cd octopress
git pull origin source #get another computer changing
cd ./_deploy
git pull origin master
```
then you can write

```bash
rake deploy
```

That's all :)
I hope this article help you.