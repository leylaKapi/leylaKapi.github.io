---
layout: post
title: "How to add multi-lingual support to your web-page in middleman"
date: 2014-10-27 
comments: true
categories: languages page middleman i18n locales yml localization
---

### Multi-Lingual Support

Firstly you should create middleman project , if doesn't exist it. Then in your project, 
open `config.rb`  file add below code,

```ruby
activate :i18n
```

when you add above code, you can active to `:i18n`. `i18n` extension provides a way to localize your site. 
After that you should add path of your locale directories in your project roots `~/MyProject/locales` directory and code
should be seems like below

```ruby
activate :i18n, :path => "/:locale/"
```

But before above command you should create new directory in your root of your project. Means of above code, created 
locale directory which including languages `yaml` files.

Then you should add root of your project according to your page language. If you want to seems to your page in english 
languages, you should add below code according to yml file in `~/MyProject/locales/en.yml`, 
if it is exist, you can write below code in `config.rb`, 

```ruby
activate :i18n, :path => "/:locale/", :mount_at_root => :en
```

Now your page always seems in english language, but if write in address bar like `/es/index.html`, you can see in 
spanish languages, if there is exist in locales directory `es.yml` file. 

According to above,  you want to change language of your page according to your place, for example, if your page was opened in Italy,
automatically shows your page in italian language, you can write instead of above,

```ruby
activate :i18n, :path => "/:locale/", :mount_at_root => false
```

You can be carefully according to above, `false` and `:en`, because these codes provide to seems your page in root which language.
 
If you created `locale` directory in root of your project, you can add which languages you want, to seem your page view, 
for example I want to seems my page in russian language, because of this I should create in locale directories `ru.yml` file.
or want see in english language, can be `en.yml`. In `en.yml` you start to add your sentence like

```yaml
---
en:
  hello: Hello
```

and

```yaml
---
ru:
   hello: привет 
```


When create your yaml file like above, I want to page seems in russian and english because I created two yaml file 
one of the `en.yml` another of `ru.yml` . 

Then you should go to source directory in project than create `~/MyProject/source/localizable/` folder in source directory,
after you should copy your `index.html.erb` or if your use `haml`, copy your `index.html.haml` to inside `~/MyProject/source/localizable/`
folder. You should change sentences or words in your project according to yml file. While you are doing this you 
can be `t` parameter for can be shortly instead of `i18n`. According to above yml files, if I change words or sentence 
in `index.html.haml` , can be like

```haml
= t('hello')
```

After when running your project, middleman thanks to `i18n` perceive automatically. if in address bar 
write `/ru/index.html`, `i18n` according to `ru.yml` changed your words and sentences or if you write `en/index.html`, 
changed according to `en.yml` file.

For more information you look at [home page](http://middlemanapp.com/advanced/localization/)

That's all.


I hope helped to you.
