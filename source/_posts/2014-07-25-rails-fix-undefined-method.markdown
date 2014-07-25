---
layout: post
title: "Rails fix undefined local variable or method"
date: 2014-07-25 15:52:35 +0300
comments: true
categories: rails fix bug local confirmed_at variable method migration generate
---

### How to fix rails undefined local variable or method 'confirmed_at' ?

If you getting like,


![rails undefined](../images/rails_undefined_error.png)

 and you thinking **how can I fix ?**

- Firstly, you need to create migration

```bash
rails g migration add_confirmable
```

then,

```bash
rake db:migrate
```

When you write above command, you get again error, like

```bash
== 20140725114621 Addconfirmable: migrating ===================================
-- change_table(:admins)
rake aborted!
StandardError: An error has occurred, this and all later migrations canceled:
undefined method `confirmable' for #<ActiveRecord::ConnectionAdapters::Table:0x007f8739d3e2e0>..../db/migrate/20140725114621_addconfirmable.rb:4:in `block in up'
/Users/...../db/migrate/20140725114621_addconfirmable.rb:3:in `up'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
```
Let's fix this bug,

- You should open your migration which created and delete

```ruby
t.confirmable
```

then go to another migration named which

```ruby
..../devise_create ... .rb
```

in this file, you should see in comment

```ruby
      ## Confirmable
      ## t.string   :confirmation_token
      ## t.datetime :confirmed_at
      ## t.datetime :confirmation_sent_at
      ## t.string   :unconfirmed_email # Only if using reconfirmable
```

you should copy or cut above command without comment to your `addconfirmable.rb` migration file, instead of `t.confirmable`

Then you can write

```bash
rake db:migrate
```

That's all.

I hope fix your bug.