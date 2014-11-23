---
layout: post
title: "How to extract images from pdf file on Ubuntu Desktop ?"
date: 2014-09-01 
comments: true
categories: ubuntu pdf files images pdfimages en
---

### Pdfimages in Ubuntu

If you have some pdf files which include images and want to extract all images like a image file, 
you can make it easily. Firstly, you should install `poppler-utils` in your machine, with

```bash 
$ sudo apt-get install poppler-utils
```

After that you can see to `pdfimages` how using it, like

```bash
$ pdfimages --help
```

you install and look at your `pdfimages` properties with above commands. Now you should go to your pdf 
file path on terminal, then write on terminal this command,

```bash 
$ pdfimages -j your_pdf_file.pdf which_name_you_want
```

you can see all images export in your pdf file in your path.
It is very easy.

That's all.