---
layout: post
title: "After create octopress blog fixed error"
date: 2014-02-26 11:30:57 +0200
comments: true
categories: Octopress en
---


### When I setup Octopress Repository, error of
 
``` bash
    rake deploy
```

<!--more-->

I setup the Octopress, and I create,

``` bash
    rake new_post\["Hello World"\]
```


then push github on

``` bash
    source
```


branch, and when I

``` bash
    rake deploy
```


 Terminal show this code :

``` bash
    To https://github.com/username/username.github.io.git
    ! [rejected]        master -> master (non-fast-forward)
    error: failed to push some refs to 'https://github.com/username/username.github.io.git'
    hint: Updates were rejected because the tip of your current branch is behind
    hint: its remote counterpart. Merge the remote changes (e.g. 'git pull')
    hint: before pushing again.
    hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```
     Github Pages deploy complete



### What I can fix it ?

 Firstly

``` bash
    git clone https://github.com/username/username.github.io.git
    git checkout source
```


 I cloning to username.github.io into master, and checkout source

 Secondly we need to setup 'deploy' directories

``` bash
    mkdir _deploy
    cd _deploy
    git init
    git remote add -t master -f origin https://github.com/username/username.github.io.git
```


Now, we can use

``` bash
    rake deploy
```

or

``` bash
    rake gen_deploy
```