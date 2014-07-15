---
layout: post
title: "Remove log and idea files on your Rails Project"
date: 2014-07-08 01:53:53 +0300
comments: true
categories: log idea git gitHub rails gitignore
---

### How to remove log and idea files on your project ?

Remove idea files

```bash
git rm -r --cached .idea
```
While you were remove, terminal gives error about it, you can try to below command :

```bash
git rm -rf --cached .idea
```
Remove log files

```bash
git rm -r log/development.log
```

After that, you should include on your `.gitignore` file like;

```bash
echo '*log' > .gitignore
```

That's all.