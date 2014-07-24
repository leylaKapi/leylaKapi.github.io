---
layout: post
title: "Rails active_admin gem bug"
date: 2014-07-22 15:55:03 +0300
comments: true
categories: rails gem active_admin bug Gemfile
---

### Fix to admin_active gem bug

You add `adminactive` gem to your Gemfile, then when you're running to `bundle` on your terminal,  you' re getting like,

```bash
$ bundle
Fetching gem metadata from https://rubygems.org/..........
Fetching additional metadata from https://rubygems.org/..
Resolving dependencies...
Bundler could not find compatible versions for gem "rails":
  In Gemfile:
    activeadmin (~> 0.6.3) ruby depends on
      rails (< 4, >= 3.0.0) ruby
    rails (4.1.4
```

If you replace on `Gemfile` from

```ruby
gem 'activeadmin'
```

to

```ruby
gem 'activeadmin', github: 'gregbell/active_admin'
```

you can fix easily.

That's all.

I hope helped to you.