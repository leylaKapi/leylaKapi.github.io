---
layout: post
title: "Fix after destroy user model try add user model"
date: 2014-07-27 14:34:26 +0300
comments: true
categories: rails g destroy User devise en
---


After you made `rails destroy Users` and you want to create again `User` model, When you create, if you' re getting like this error,

```bash
    $ leylakapicmd@leylakapicmd:~/workspace/project-library$ rails g model User provider uid name oauth_token
     /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/inflector/methods.rb:238:in const_get: uninitialized constant User (NameError)
    $ leylakapicmd@leylakapicmd:~/workspace/project-library$ rails g model User
    /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/inflector/methods.rb:238:inconst_get': uninitialized constant User (NameError)
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/inflector/methods.rb:238:inblock in constantize'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/inflector/methods.rb:236:ineach'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/inflector/methods.rb:236:ininject'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/inflector/methods.rb:236:inconstantize'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise.rb:297:inget'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/mapping.rb:77:into'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/mapping.rb:72:inmodules'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/mapping.rb:89:inroutes'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/mapping.rb:156:indefault_used_route'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/mapping.rb:66:ininitialize'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise.rb:331:innew'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise.rb:331:inadd_mapping'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/rails/routes.rb:221:inblock in devise_for'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/rails/routes.rb:220:ineach'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/devise-3.2.4/lib/devise/rails/routes.rb:220:indevise_for'
	from /home/leylakapicmd/workspace/project-library/config/routes.rb:3:inblock in <top (required)>'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/actionpack-4.1.1/lib/action_dispatch/routing/route_set.rb:335:ininstance_exec'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/actionpack-4.1.1/lib/action_dispatch/routing/route_set.rb:335:ineval_block'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/actionpack-4.1.1/lib/action_dispatch/routing/route_set.rb:313:indraw'
	from /home/leylakapicmd/workspace/project-library/config/routes.rb:1:in<top (required)>'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/routes_reloader.rb:40:inblock in load_paths'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/routes_reloader.rb:40:ineach'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/routes_reloader.rb:40:inload_paths'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/routes_reloader.rb:16:inreload!'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/routes_reloader.rb:26:inblock in updater'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/file_update_checker.rb:75:incall'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/activesupport-4.1.1/lib/active_support/file_update_checker.rb:75:inexecute'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/routes_reloader.rb:27:inupdater'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/routes_reloader.rb:7:inexecute_if_updated'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application/finisher.rb:71:inblock in <module:Finisher>'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/initializable.rb:30:ininstance_exec'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/initializable.rb:30:inrun'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/initializable.rb:55:inblock in run_initializers'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/2.0.0/tsort.rb:150:inblock in tsort_each'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/2.0.0/tsort.rb:183:inblock (2 levels) in each_strongly_connected_component'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/2.0.0/tsort.rb:219:ineach_strongly_connected_component_from'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/2.0.0/tsort.rb:182:inblock in each_strongly_connected_component'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/2.0.0/tsort.rb:180:ineach'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/2.0.0/tsort.rb:180:ineach_strongly_connected_component'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/2.0.0/tsort.rb:148:intsort_each'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/initializable.rb:54:inrun_initializers'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application.rb:288:ininitialize!'
	from /home/leylakapicmd/workspace/project-library/config/environment.rb:5:in<top (required)>'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/application.rb:264:inrequire_environment!'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/commands/commands_tasks.rb:147:inrequire_application_and_environment!'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/commands/commands_tasks.rb:133:ingenerate_or_destroy'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/commands/commands_tasks.rb:51:ingenerate'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/commands/commands_tasks.rb:40:inrun_command!'
	from /home/leylakapicmd/.rbenv/versions/2.0.0-p451/lib/ruby/gems/2.0.0/gems/railties-4.1.1/lib/rails/commands.rb:17:in<top (required)>'
	from bin/rails:4:inrequire'
	from bin/rails:4:in<main>'
```


You need to remove  `devise_for :users` from `routes.rb`, then try generate and you don't forget made  `rake:db migrate`.

After `migrate`, if you have new error from `db`, you can make this command with orderly.

```bash
rake db:drop
rake db:create
rake db:reset
rake db:migrate
```

That's all.

I hope solve your problem.