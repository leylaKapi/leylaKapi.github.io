---
layout: post
title: "Tricks on Rails"
date: 2015-09-07 14:37:16 +0300
comments: true
categories: rails db error migrate create exist schema tips tricks cap capistrano image bg radio-button mandrill deploy ssh server model control recipes-matic public
---

- ### `rake db:migrate` for an existing model

Firstly I created new rails app, after that created several models, or you make some changes on your model manually(wrong way), while you are running `rake db:migrate` getting error for an existing model in your app. For fix that issue
you can write,

```bash
rake db:schema:load
```

or

```bash
rake db:drop
rake db:create
rake db:migrate
rake db:schema:dump
rake db:text:prepare
```

<!-- more -->

- ### `background-image` use in haml

```haml
%li{style: "background-image: url(#{image_path "image.png"})"}
```

- **In rails, if you give `/` to path, this means that look to `public` directory.**
- **`bundle exec rake db:drop db:create db:migrate`**

- ### Rename table more easier with Migration!

```ruby
class RenameOldTableToNewTable < ActiveRecord::Migration
    rename_table :old_table_name, :new_table_name
end
```

- ### Radio button on with `simple_form`

```haml
= simple_form_for @new do |new|
    =  new.error_notification
    .form-inputs
        = f.input :title
        - ['Url', 'file'].each do |content|
            %label
                = new.radio_button(:file, content)
            = content.humanize
```

- ### Getting data from admin panel to home

 Getting all data or some data which is added in admin panel to show in home .

```ruby
class WelcomeController < ApplicationController
  def index
    @news = New.all.order(id: :desc) // you can give limit like
    @news = New.all.order(id: :desc).limit(10) // taking limited data
  end
end
```


```haml
- @news.each do |new|
    %p
        = link_to '{new.title}', '{new.url}'
```

- ### Add [mandrill](https://mandrillapp.com/) to your rails app

For contact form in your app,

```yml
--config/settings.yml, config/settings/development.yml, config/settings/production.yml, config/settings/staging.yml --
smtp:
  mandrill:
    address: 'smtp.mandrillapp.com'
    port: 123
    enable_starttls_auto: true
    user_name: 'your_mail',
    password: 'your_api_password'
    authentication: 'plain'
```


```ruby
--config/environments/development.rb and config/environments/production.rb --
  config.action_mailer.smtp_settings = {
      address: 'smtp.mandrillapp.com',
      port: 123,
      enable_starttls_auto: true,
      user_name: 'your_mail',
      password: 'your_api_password',
  }
```

- ### Deploy to server with capistrano shortly

for [server-base.sh](https://gist.githubusercontent.com/ismailakbudak/6e42120bc86b20b7dc15/raw/b66d79746a6429a029b70ce7fd052fb122f426d2/server-base.sh)

```bash
ssh username@ip_adress
wget url/server-base.sh
ls-al
chmod +x server-base.sh
```

if give you permission denied please use `sudo su`

```bash
sudo su
./server-base.sh
```

Same way for [deploy-user.sh](https://gist.githubusercontent.com/ismailakbudak/e2cbcd17c54967b9b387/raw/44ab2cae6e2ebb1c55766bac9dc9a45443695bd0/deploy-user.sh) and after that open new tab in term

```bash
ssh deploy@ip_adress
wget url/deploy-user-env.sh
ls-al
chmod +x deploy-user-env.sh
./deploy-user-env.sh
```
For [deploy-user-env.sh](https://gist.githubusercontent.com/ismailakbudak/9fb946df9f6ec469c7db/raw/8f7a1411e034a85f8b6d25f55416375351787c1f/deploy-user-ruby-environment.sh)
if give you language exception open /etc/environment

```bash
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
```

After that use [recipes_matic gem](https://github.com/lab2023/recipes_matic) for install capistrano and all derivatives .
Then make all customizations.

That 's all, I hope solve your issues.