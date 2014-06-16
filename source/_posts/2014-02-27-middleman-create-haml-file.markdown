---
layout: post
title: "Middleman create haml file"
date: 2014-02-27 13:49:10 +0200
comments: true
categories: Middleman, Haml
---

### How to create .haml file in middleman?

Firstly, you should go [middleman]('http://middlemanapp.com/') and you need to **install middleman**

``` bash
   gem install middleman
```


Fine, you are installed middleman, now we start to create project in middleman

``` bash
   middleman init project_name
```

Then this command give you directory as shown below :

``` bash
 project_name/
    Gemfile
    Gemfile.lock
    config.rb
    source
        .gitignore
        images
            background.png
            middleman.png
        javascript
            all.js
        stylesheets
            all.css
            normalize.css
        layouts
            layout.erb
        index.html.erb
```




If you can see this directories, you should open project with your IDE.

**Now, We create .haml file but how ?**

Go ahead and remove below files because these files don't use in project.

    - /source/images/background.png
    - /source/images/middleman.png
    - /source/javascript/all.js
    - /source/stylesheets/all.css
    - /source/stylesheets/normalize.css
    - /source/layouts/layout.erb
    - /source/index.html.erb

Now, Projects was removed from unused files.

##### Add HAML

Middleman appear to read HTML by default . Therefore, you should go to

``` directory
 /config.rb
```

in file write:

``` haml
set :haml, :format => :html5
```


Now program convert to html5 from haml.

- Add a

``` haml
 layout.haml
```


file to the

          /source/layouts

directory. In this file we write

``` haml
    !!!
    %html{ :lang => "en"}
        %head
            %meta{:charset => "utf-8"}
            %title= data.page.title
            = stylesheet_link_tag "your_css_file.css"
            = javascript_include_tag "your_javascript_file.js"
        %body
            = yield
```

Now we must create

``` haml
index.html.haml
```

in

                `source/`
directory.

``` haml
 %h1 Welcome Middleman project
```

write in

               `source/index.html.haml`
files.

We are create middleman project and write codes, How we run this program?

Wait! Dont worry, When writing to below command in terminal in order of this.

    # Go to project path

         cd project_name
         bundle install
         bundle exec middleman server

then we are seen

             http://localhost:3000

like url. We should copy this url and paste on browser search bar.

That's it! Try and see.