---
layout: post
title: "Rails fix N+1 query"
date: 2014-12-16
comments: true
categories: rails ruby n+1 query model controller association fix bug
---

### How to fix N+1 query in Rails ?

I try to explain fix `N+1` on example. Let's start, firstly, in your rails application, you created association between `user` and `user_profile`
models like below :

```ruby
class User < ActiveRecord::Base
   has_one :profile, class_name: 'UserProfile'
end
```
and 

```ruby
class UserProfile < ActiveRecord::Base
  belongs_to :user
end
```

When you created association between `user` and `user_profile` like above (you can derive it), then you are getting like below error while you refresh to app page or
edit something... The error is that :

```ruby
The page at 0.0.0.0:3000 says:
user:-----
N+1 Query detected
User => [:profile]
Add to your finder::include => [:profile]
N+1 Query method call stack
```

Actually rails says to you for fix above bug(it says use `include` to `profile`...), for fix bug open `users_controller.rb` then
add : 

```ruby
User.includes(:profile)
```

instead of 

```ruby
User
```
like below ;
  
```ruby
class UsersController < ApplicationController
    def index
        @search = User.includes(:profile).search(params[:q])
        @users = @search.result(:distinct => true).paginate(:page => params[:page])
    end
end
```

That's it.

I hope helped to you .
