---
layout: post
title: "Fix rake db:populate"
date: 2014-08-08 10:33:06 +0300
comments: true
categories: rails rake database sqlite ruby populate migration reset create en
---


### `Rake aborted! Don't know how to build task 'populate'`

```bash
$ rake db:populate
```
or

```bash
$ bundle exec rake db:populate
```

<!-- more -->

While you were writing above command, you get errors like `Don't know how to build task 'populate'`.

Let's fix,

Firstly, you should check

```ruby
lib/tasks/sample_data.rb
```
- if this file exist, you should rename this file

```ruby
sample_data.rake
```
then try to run tour rails project.

- if not exist, you should create new file in `lib/tasks` directory, `sample_data.rake`.

That' s all.

