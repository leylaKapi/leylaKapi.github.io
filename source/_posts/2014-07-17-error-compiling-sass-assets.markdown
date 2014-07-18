---
layout: post
title: "Error compiling sass assets"
date: 2014-07-17 16:27:24 +0300
comments: true
categories: middleman sass bootstrap compiling assets
---

### Middleman sass compiling error

While you were made web template with `haml` and `sass`, if you use middleman and bootstrap for your web template and your project give you like,

```sass
Error compiling CSS asset
NoMethodError: undefined method `font_path` for nil:NilClass
```
error.

You can fix like with edit your `Gemfile`

```ruby
gem 'bootstrap-sass', '~> 3.1.1'
gem 'middleman-sprockets', '3.2.2'
gem 'middleman-bootstrap-navbar','~>2.0'
```

Then you can write in terminal `bundle install`
Than if errors didn't fixed, you should write on terminal

```bash
bundle update middleman-sprockets
```

If you want to researches with details, you should look [this page](https://github.com/middleman/middleman/issues/1265)

That's all.

I hope helped to you.