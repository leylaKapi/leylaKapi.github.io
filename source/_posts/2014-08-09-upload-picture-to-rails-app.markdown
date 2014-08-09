---
layout: post
title: "Upload picture to rails app"
date: 2014-08-09 13:03:08 +0300
comments: true
categories: rails paperclip gem picture upload
---

### How to upload picture in rails app ?

If you want to upload picture in your rails app, you should make

- Open your `Gemfile` in rails app then add

```ruby
gem 'paperclip', :git => "git://github.com/thoughtbot/paperclip.git"
```

in terminal write `bundle` for install gem.

- Which models do you want to upload picture ? For example, you have `books` model, because of this,  I write all command according to `book` model.

- After install `paperclip` gem, open your `terminal` again then write

```bash
 $ rails g paperclip Book photo
```
then

```bash
$ bundle exec rake db:migrate
```

- Open `models/book.rb` add

```ruby
  include Paperclip::Glue
  has_attached_file :photo, :styles => { :small => "250x250>" },
                    :url  => "/assets/books/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/books/:id/:style/:basename.:extension"
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 10.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
```

- Open `books/show.html.haml` add

```haml
= image_tag @book.photo.url(:small)
```

- Open `books/_form.html.haml` add

```haml
= form_for @book, html: { multipart: true }  do |f|
  = f.file_field :photo
```

- Open `controllers/books_controller.rb`, then check `create` method if you use

```ruby
 def create
    @book = Book.new(book_params)
 end
```
instead of above, you should write

```ruby
 def create
    @book = Book.create(book_params)
 end
```

Lastly, you should control to add `:photo` in your `book_params` method.

```ruby
private
    def book_params
      params.require(:book).permit(:category_id, :author_id, :isbn, :name, :photo)
    end
```

If you want to learn with details, you can visit [this site](http://railscasts.com/episodes/134-paperclip?autoplay=true)

That' s all.