---
layout: post
title: "Note:How to fix Android Parse Sdk failed?"
date: 2014-10-18
comments: true
categories: android fix bug error parse sdk typer-face initialize run eclipse
---

If you are coding android on eclipse and when you are open your eclipse getting like

```html
parseSdkContent failed
Could not initialize class android.graphics.Typeface
```
For the fix above error, you should open your `home` directory, then search the `android` file with

```bash
$ cd .android
```

If `.android` folder is exist in your home, you should remove this folder for fox the bug,

```bash
$ rm -rf .android
```

you should run above command for fix the bug. Then you can check it.

That's all.

I hope helped to you.
