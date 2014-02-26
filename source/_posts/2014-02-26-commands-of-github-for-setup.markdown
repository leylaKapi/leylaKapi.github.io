---
layout: post
title: "Commands of github for setup"
date: 2014-02-26 12:31:12 +0200
comments: true
categories: git and github
---



### What I can setup github and create repo?

- Firstly we create github account from [github](https://github.com/)
- We create a new repo from '+' symbol.
- We named this repo and creating.
- After, We seems to this url
    
    
        HTTP: https://github.com/username/repo_name.git
        SSH: git@github.com:username/repo_name.git
    

We use any link. Now, we clone this repo on pc.

Use this command
    
    
        git clone https://github.com/username/repo_name.git
    

Now you are cloning to pc but where this file?

For this question, Where you want to setup, install there. For example, if you want to clone in desktop, you should go desktop path
like this(For Mac);

    
        cd Desktop/
   

And then cloning this path.

- After clone, We open this file on ide or anywhere, writing our code in file.

Now, changed this file, We should push this file to github.
Hence, we use this code ;

    
        git add .
    

With this command, we added all changed file on network, we wait for push.

- Which file added on network? Answer this question, We write this command and see to adding file.

    
        git status
    

- We are saw to adding file , Now We need to commit for then to remember the files which adding.

    
        git commit -m "your_comment"
    

- We prepared commit, Now all preparations are prepared, and we should push file n github

    
        git push origin master
    
Note: 'master' are name of branch on github, if you use another branch or  don't use 'master' branch we created new branch and push

    
        git push origin branch_name
    

- If you want to see branches in your repo,
    
    
        git branch -a
    

- If you created new branch

    
        git branch name_of_newbranch
    
- Now, you are in name_of_newbranch , but you want to return or switch another branch therefore
 
 
    git checkout another_branch
 
 
 Git command basicly like this.