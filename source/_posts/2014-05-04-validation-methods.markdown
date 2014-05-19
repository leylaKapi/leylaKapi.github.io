---
layout: post
title: "Validation methods"
date: 2014-05-04 20:39:52 +0300
comments: true
categories: validates ruby rails RoR
---

### Ruby on Rails Validation methods

- **validates_presence_of**

Attribute mustn't be blank(nil,false,[],{})

```ruby
validates_presence_of :field_name
```

- **validates_length_of**

Attribute must meet length requirements :is, :minimum, :maximum, :within, :in, :too_short, :too_long

```ruby
validates_length_of :field_name, :minimum => 100
```

- **validates_numericality_of**

Attribute must be integer or floating number :less_than, :greater_than, :equal_to, :odd, :even, :greater_than_or_equal_to

```ruby
validates_numericality_of :field_name, :greater_than_or_equal_to => 5
```

- **validates_inclusion_of**

Attribute must be in a list of choises. (array or range) :in

- **validates_exclusion_of**

Attribute mustn't be in a list of choises. (array or range) :in

- **validates_format_of**

Attribute must match a regular expression. :with

- validates_uniqueness_of

Attribute mustn't exist in the database :case_sensitive, :scope

- **validates_acceptance_of**

Attribute must be accepted :accept(expected value, 1)

- **validates_confirmation_of**

Attribute must be confirmed by entering it twice creates a virtual blank attribute for confirmation.

- **validates_associated**

Associated object or objects must all be valid.

```ruby
:allow_nil => true
#Skip valid if attribute is nil
:allow_blank => true
#Skip valid if attribute is blank
```

Example of Validations

```ruby    
validates_presence_of :user_name
validates_length_of :user_name, :maximum => 50
validates_uniqueness_of :user_name
```

When we use like above, We diverge to DRY, instead of above

```ruby
validates :user_name, :presence => true
                     :length => {:maximum => 50}
                     :uniqueness => true
```

That's all.
