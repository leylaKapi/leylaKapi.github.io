---
layout: post
title: "Brief info about Hash"
date: 2014-03-01 18:52:57 +0200
comments: true
categories: Ruby, Hash en
---

### What is the hash in ruby ?

Hash, hash, hash ?

- Hashes are one of the biggest property which separated another language in ruby.
- Hash was known **associative array** in another programming language.
- In hash, elements keep **'key => value'** format in ruby . Like

``` ruby
    hash_example = { 'name' => 'John', 'surname' => 'doe' }
```

<!-- more -->


- Values of keys can be any type, but when you use **'eql?'** method, it can be only a key according to each other.

``` ruby
        a = { 3 => 'three', 3.0 => 'threedotzero' }
        a[3]        #three
        a[3.0]      #threedotzero
        3 == 3.0        #true
        3.eql? 3.0      #false
```
- Hashes usually write with symbols, like :

``` ruby
 hash_with_symbol{ name: 'John', surname: 'Doe'}
```

- Hashes are similar to Array class, but Array uses integer as its index, hash allow to us any object type.

``` ruby
    hash_differences_array{ 'age' => 15, 'year' => 2014 }
    array_differences_hash = [1, 2, 3]
```

In my opinion, You have an information about hashes. Do you agree with me?!

- Continue to learn!, I have an information about hash, but if I want to access only keys or values , How does it access or separate these in hash ?

For this question, solution: if you want to access to keys use

            keys

method, if you want to access to values use

            values

methods. Like:

``` ruby
    access_values_keys{ name: 'john', surname: 'Doe'}
    access_values_keys.keys         # [:name, :surname]
    access_values_keys.values       #['John', 'Doe']
```

- Generally, hashes are using in parameters of name,

``` ruby
    def parameters_name(name, age)
        '#{name} : #{age}'
    end
    puts name 'John' , 18       # Ali : 18
```

- Hashes uses to **ENUMERABLE** module like arrays.

``` ruby
  {}.class.ancestors          #show the hash ancestors.
                                        #[Hash, Enumerable, Object, PP::ObjectMixin, Kernel, BasicObject]
```

- If you want to change from array to hash, you should use

``` ruby
    .to_h
```



**Lastly** If you want to learn more, you can visit [ruby-doc](http://www.ruby-doc.org/core-2.0/Hash.html) .















