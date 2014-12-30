---
layout: post
title: "Add simple search form to rails projects"
date: 2014-07-16 19:47:15 +0300
comments: true
categories: rails search form ruby model controller en
---

### How can you add simple search form to rails project ?

You want to add search form, but you don't no.  *HOW?*

Let's start, firstly you should use [ransack](https://github.com/activerecord-hackery/ransack) and
[will_paginate](https://github.com/mislav/will_paginate) gems in your `Gemfile` then you should write in
terminal `bundle` .

Then open controller which you want to add search bar, like ;

<!-- more -->

`projects_controller`

```ruby
def index
    @search = Project.search(params[:q])
    @project = @search.result(distinct: true).paginate(:page => params[:page])
    respond_with @project
end
```

When you added controller, you should add below code which relation to index file ;

`projects/index.html.haml`

```haml
= search_form_for @search do |f|
    = f.label :name_cont
    = f.search_field :name_cont
    = f.submit
```

That's all .

I hope helped to you .