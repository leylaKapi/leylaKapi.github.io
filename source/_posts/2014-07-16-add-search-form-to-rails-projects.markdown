---
layout: post
title: "Add search form to rails projects"
date: 2014-07-16 19:47:15 +0300
comments: true
categories: rails search form ruby model controller
---

### How can you add simple search form to rails project ?

You want ot add search form, but you don't no *HOW?*

Let's start, firstly you should use [ransack](https://github.com/activerecord-hackery/ransack) and
[will_paginate](https://github.com/mislav/will_paginate) gems in your `Gemfile`

Then open controller which you want to add search bar, like ;

`projects_controller`

```ruby
def index
    @search = Project.search(params[:q])
    @project = @search.result(distinct: true).paginate(:page => params[:page])
    respond_with @project
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