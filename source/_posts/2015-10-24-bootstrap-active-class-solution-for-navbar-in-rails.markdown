---
layout: post
title: "Bootstrap active class solution for navbar in rails"
date: 2015-10-24 17:32:38 +0300
comments: true
categories: rails bootstrap application active nav navbar solutions problem ul li active_class ruby helper ror haml sass tricks tip bug fix js route
---


Sometimes while you are adding bootstrap to your rails app, you can getting some problem on javascript side. In this article I try to explain how we can fix `active` class to navbar . For fixing, you can write in helper `active_class` method like below

```ruby
module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? 'active' : ""
  end
end
```

<!--more-->

In your views from bootstrap classes should be like,

```html
%ul.nav.navbar-nav
  %li{class: active_class(about_path)}
    = link_to 'About', about_path
  %li{class: active_class(works_path)}
    = link_to 'Our Works', works_path
  %li{class: active_class(contact_path)}
    = link_to 'Contact', contact_path
```

In addition, you can update according to your style to below command, but in this part it s important to use  `!important` method for overwrite on `active` class .

```css
.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:active
  color: red !important
```

That's all. I hope helped to you.

For more information: http://goo.gl/twDl3t