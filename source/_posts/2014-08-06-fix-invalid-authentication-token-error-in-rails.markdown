---
layout: post
title: "Fix Invalid Authentication Token error in rails"
date: 2014-08-06 23:49:35 +0300
comments: true
categories: rails controller authentication gem ajax 
---

### How to fix `ActionController: InvalidAuthentication Token error` ?

If you use `devise` gem and when you enter login page in your rails project, you get 
`Invalid Token` error, you thinking on `controller` .

Try to fix this bug ;

- Open `application_controller.rb` then remove this line, 

```ruby
protect_form_forgery, with: :exception
```

on your controller.

- Then add
 
```ruby
skip_before_filter :verify_authenticity_token
```

But, this method not safe, so when you get like this bug, you can search and use `ajax` for the solve it.

That's all.

I hope helped to you .
