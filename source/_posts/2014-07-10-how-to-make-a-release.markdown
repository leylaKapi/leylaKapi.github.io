---
layout: post
title: "How to make a release ?"
date: 2014-07-10 19:01:26 +0300
comments: true
categories: git gitHub release en
---

Make a release

When you start to make a release, I think if you look at your commit it can be better

```bash
git log
```
then if you make some wrong commit, you can delete wrong commit with

```bash
git rebase -i HEAD~2
```
command.
Then,

```bash
git push origin +develop
```

After that, you can check you branch with

```bash
git branch -a
```
then let's start to release ;

```bash
git flow release start your_version_number
```
`your_version_number` can be like `0.1.0` . Actually can be like

```bash
git flow release start 0.1.0
```
When we write this command, you can create `VERSION.txt` file, and open 'txt' file
then write some number with `your_version_number`

Write with order below commands,

```bash
git add .
git commit -m "Bump version 'your_version_number'"
```

```bash
git flow release finish 0.1.0
```

```bash
git checkout release/0.1.0
```

```bash
git push origin develop
```

```bash
git push origin +master
```

Yep, Now you made a release you can check on your repo settings on [github](https://github.com/).

Let' s add Tag,

```bash
git tag
```
```bash
git push --tags
```

That' s all.
I hope help to you.
