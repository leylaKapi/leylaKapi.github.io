---
layout: post
title: "How to add 'About' page in octopress"
date: 2014-02-26 14:25:12 +0200
comments: true
categories: Octopress
---

### How to add 'About' page in Octopress?

I needs 2 step for create `About` page on navigation bar.

- Firstly create 'about page'

``` bash
    rake new_page\["About"\]
```

Created new page for about and we linked to `About`, How?

- We open

``` directory
    /source/_includes/custom/navigation.html
```

 write the 3rd line below:


``` html
   <ul class="main-navigation">
     <li><a href="{{ root_url }}/">Blog</a></li>
     <li><a href="{{ root_url }}/blog/archives">Archives</a></li>
     <li><a href="{{ root_url}}/about">About</a></li>
   </ul>
```
then we use git command for sent on github


``` bash
    git add .
    git commit -m "Your Commit"
    git push origin source
```
And, for see on personal blog we need to deploy your code

``` bash
    rake generate
    rake preview   #see on localhost:4000
    rake deploy
```

That's it!