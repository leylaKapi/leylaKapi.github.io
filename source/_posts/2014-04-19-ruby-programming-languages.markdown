---
layout: post
title: "Ruby programming languages"
date: 2014-04-19 10:52:45 +0300
comments: true
categories: ruby programming-languages beginner en
---
#AB2014 - Ruby101 for beginners
- [Ruby-lang](https://ruby-lang.org)
- [Nitrous](https://nitrous.io)

*These notes restored in Academic Information Education Mersin from Notes of **Mr. Sıtkı Bagdat** .*
##Ruby is a programming languages

- Ruby, readable high level a programming languages.
- Started to developt at 1993 and published at 1995.
- In 2013 for Ruby was selected brightest year,the reason is that in this year, two version was developt Ruby-2.0 and Ruby-2.1.
- Ruby, entegration with Rails in 2004.Then we start to use Ruby on Rails in web development.
- Ruby developt by Japon Yukihirato  Matsumoto (Matz).
- Ruby is completely object-oriented. (With a few exceptions)
- Unlike another programming languages, ruby is interpreter languages. This means that, when we developt programm with ruby if can find a bug, Ruby running until bug's line.
- Included dynamic typing. This means that, we goes easily from a type to another type, not necessary to pre-definition.
- Ruby included package managers. ([RubyGems](https://rubygems.org))
- Ruby provide to development to Ruby on Rails and Sinatra .

**also**

- Metaprogramming (Coding write code.)
- DSL (Domain Specific Language)
- DRY (Don't repeat yourself)
- TIMTOWTDI (There is more than one way to do it)

## Ruby.philosopy[]

- **Ruby.philosopy[1] **

Ruby is, stronger than Perl, more object-oriented than Phyton, script languages.

> Perl + Smalltalk + Phyton + Lisp + Ada + ... = Ruby

- **Ruby.philosopy[2]**

Ruby like a human body, seemingly simple but there are a complex structure inside.

- **Ruby.philosopy[3]**

The aim is, When we coding a programming, coding should provide to express simple and readable.

## Irb ve Repl Functions

``` bash
    irb
    irb(main):001:0> 2+2
    => 4
    exit
    irb --simple -prompt
    >> 12.class
    => Fixnum
    >> exit
    irb(main):003:0> 2*9/3+7
    => 13
    irb(main):004:0> _ * 3
    =>39
```

Acoording to above *irb*, opened ruby terminal; *exit* exit to ruby terminal. In addition *irb --simple -prompt* this command is provide to seeming regular to terminal.Strikes the eye another notifications is that

*_*

this sign provide to take pre-functions and then make process with this functions.

``` ruby
    system('clear')
```

with this command provide to clear your terminal.

``` bash
    irb(main):008:0> self
    => main
```

this command show the writing on main class .

**Also**

``` bash
    irb(main):010:0> a="Ruby"
    => "Ruby"
    irb(main):011:0> a.reverse
    => "ybuR"
    irb(main):012:0> "I love
    irb(main):013:0" ruby"
    =>  "I love\nruby
```


Seeming to above code *.reverse* method which entered code, provide to writing reverse.Also if when opened quotes then not closed, **>** instead **"** can be this expression.

## Logical expressions

- False or nil,  acceptable false.
- Except false ve nil, everything acceptable true, like 0, [], ...
- Like another languages, when we make comparisons <,>, ==,! using this expressions.


``` bash
    irb(main):001:0 3 > 5
    => false
    irb(main):002:0 3 < 5
    => true
    irb(main):003:0 3 == 5
    => false
    irb(main):004:0 !13
    => false
    irb(main):005:0 true.class
    => TrueClass
    irb(main):006:0 false.class
    => FalseClass
    irb(main):007:0 nil.class
    => NilClass
```

We mention to everthing an object and derivation from a class in Ruby, strike to eye above, *True*, *false* , *nil* derivation a class.
Also we mention about *nil*, nil means that *nothing* like another languages null, undefined...etc.
In ruby, Not exist relevant to logical expression like *Boolean* or *Bool* classes. Also While we are using to logical expression, using like *&&, ||, ! (and, or, not)* expression.

##Meeting to Methods

- Defining to method start **def**, and ending with **end**.


``` ruby
    def method_name
    ...
    end
```

If method get a parameter like :

``` ruby
    def method_name(param1)
    ...
    end
```

``` ruby
    def method_name(param1, param2)
    ...
    end
```

**Also** Not required to using parenthesis like :

``` ruby
    def method_name param1, param2, ...
    ...
    end
```

***

``` ruby
    def collection number1, number2
        number1 + number2
    end
    puts "Result of collection: ", collection(3,5)
```

The above codes writing in *.rb* file and then save it, then open your terminal , writing path of files in terminal

``` bash
    ruby project_name
```

write above command in terminal.

In Above code, defining *collect method* for collection two number and make collection process then show in terminal.


- Method name, ending with **?, ! or =** ,this characters have special meaning.

``` ruby
    questioning?    #return true or false
```

``` ruby
    changed_value = ...   #changed value of anything value, assignment operator.
```

``` ruby
    danger!    #changed original text.
```

***

``` bash
    irb(main):001:0> a="Ruby"
    => "Ruby"
    irb(main):002:0> a.reverse
    => "ybuR"
    irb(main):003:0> a
    => "Ruby"
    >> exit
    irb(main):004:0> a.reverse!
    =>  "ybuR"
    irb(main):005:0> a
    =>  "ybuR"
```

In above example entering a value and using **!** character changed original value.

##Rules for named

- class, module and constant name starts with capital letter.

``` ruby
    class ClassName
    ...
    end
    module ModuleName
    ...
    end
    PI_CONSTANT = 3,14156
```
must be defined like above. Also you know constants doesn't change, if you want to change can be bug.

``` bash
    irb(main):001:0> PI_CONSTANT = 3,14156
    => [3,14156]
    irb(main):002:0> PI_CONSTANT  = 2
    (irb):47: warning: already initialized constant PI_CONSTANT
    (irb):46: warning: previous definition of PI_CONSTANT  was here
    => 2
```

- **local variables** starting with lover letter or '_' , like :


``` ruby
    local_variable = "like this."
    plate = 20
```


- **Global variables**  starting with '$', like :


``` ruby
    $global_variables
```


- **instance variables** starting with '@' and class variables starting with '@@'. like :

``` ruby
    @instance_variables
```

``` ruby
    @@class_variables
```


**Also** you can writing ruby, without opening *irb* in terminal. like:


``` ruby
    ruby -e "puts 'Hello'"
    => Hello
```

But the above method is not a preferred method commonly.

***

``` ruby
    def changed(value)
        variables = value
    end
    puts "Value of variables: #{changed(20)}"
    => Value of variables: 20
```




##included another file in your file.

**external_file.rb** can be ruby file like this.Also can be we are currently working on **calıstıgımız_dosya.rb**.

If we want to embeded in  **external_file.rb** files on **currently_working_file.rb** files, we should use *load* comand. like :

``` ruby
    external_file.rb
```

``` bash
    currently_working_file.rb
    load 'external_file.rb'
```

In Rails, we can generally use *autoload* command. *autoload* is loading automatically file.

Instead of *load* command, you can use *require* command but,when you use *load*, you can use many times in file, when you use *require*, *require* load file only once and generally *require* more preferred than it.
In addition, If we use ruby library, we should use, like


``` ruby
require 'library_name'
```

You can see to use all path and method with **ENV**

Writing command about **Gem** :

``` bash
    gem -v   	#seeing the version of gem
    gem update --system  #provide to update your system
    gem list  	#you can see all gem list
    gem list -r  	#will see load to gem
    gem install pry  	#provide to writing colorful in terminal.
    gem install pry --no-ri   # thanks to this we can install without documentation.
    gem uninstall package_name 	#use for uninstall gem
```


If you use package ,before need to install the package, using this command

``` ruby
    gem install package_name
```

when we install this gem, then we embeded in *currently_working_file.rb* like

``` ruby
    require 'package_name'
```


**If I use many gem, Do I install gem one by one? **

Of course No!, instead of this we use  *Gemfile*, we write in file

``` ruby
    source ('http://ruby-gems.org')
    gem 'package_name'
```

we write above command in Gemfile, we install automatically all gems.

**Also** If I create a ruby file, go to wanted directory and write below code, These code provided create ruby file in Desktop.

``` bash
    gem install bundler
    cd Desktop   		#for desktop path
    bundle gem package_name
```


For detail viewing [Bundler](http://bundler.io/)

Opened file, after we make to do, push to package to [RubyGems](http://rubygems.org) then we see in this site.

**Note :**
-Also *Thor* is a package(gem) for ruby.
-*ARGV* is constant which hidden to arguments.
-In documentation section writing *ri*  command, generally we use to search for method.

``` ruby
    ri Class#method
```


# Input - Output processing

For output command write like

``` ruby
    puts  	# output with \n.
    print
    p 		#when we use '.inspect', instead of *.inspect* we use *p*.
    printf
```

For input command write like

``` ruby
    gets  	#get input from user.
```

above instead of  *p* using  *.inspect*

``` ruby
    puts "ruby".inspect
    puts 3.inspect
```

*.inspect* method provide to take hid state of method. This means that if I using *.inspect* instead of this using *p*.

- *chomp* provide if the last character can exist "\n" symbol, cleaning the last characters.
- *chom* provide to clean all last characters



     		       Basic Object
      			        ||
      			      Object
      			        ||
      			      Numeric
      			        ||
      	Integer		float	Rational	Complex

	Fixnum  Bignum



If you generally showing the class, you can show like above.

- In Ruby 2.0 version, if you want to defining rational number, you can like *30/2r*.
- In Ruby monetary system should use **BigDecimal** library in project. 


``` ruby
    1.0e7  		#10.000.000
    3.methods   	#for 3 number, bring all methods
    require 'yaml'			# added yaml .
    puts 2.methods.to_yaml
```

- **<=>(space ship)** comparative operator.

``` ruby
    a <=> b
    a < b ; -1
    a > b ; 1
    a =b ; 0
```


***

``` ruby
    a = 5 && b = 10
    a <=> b 			#-1
```

-times and upto methods

``` ruby
    10.times do |i|
    ...
    end
```

or

``` ruby
    10.times {|i| ...}
```

thanks to this we write loop with *times*.

``` bash
    irb(main):001:0> 10.times do |i|
    irb(main):002:1* puts "ruby"+i.to_s
    irb(main):013:1> end
    ruby0
    ruby1
    ruby2
    ruby3
    ruby4
    ruby5
    ruby6
    ruby7
    ruby8
    ruby9
    =>10
```



- With *1.upto(10){...}* same use with *times*

``` bash
    irb(main):001:0> 10.upto(10) {puts "ruby"}
    ruby
    ruby
    ruby
    ruby
    ruby
    ruby
    ruby
    ruby
    ruby
    ruby
    =>1
```

or

``` bash
    irb(main):001:0> 1.upt0(10) do |i|
    irb(main):002:1* puts "Ruby"+i.to_s
    irb(main):013:1> end
    Ruby1
    Ruby2
    Ruby3
    Ruby4
    Ruby5
    Ruby6
    Ruby7
    Ruby8
    Ruby9
    Ruby10
    => 1
```

##Text

- When we combine the text, we can embed in string expressions.


    ``` ruby
        puts "#{'academic'.capitalize} #{'information'.upcase}"

        =>	Academic INFORMATION
    ```


-Also to support Turkish characters, you should use *Unicode-Utils* library.


``` bash
    gem install unicode_utils
```

install than, write in file,

``` ruby
    require 'unicode_utils'
```


``` ruby
    UnicodeUtils.upcase("ruby")
    => RUBY
```


-%q => use for single quotation

``` ruby
    text = %q<Hello>
    => 'Hello'
```
-%Q => use for double quotation

```
text=%Q{Hello}
    => "Hello"
```

***

```
irb(main):002:0> ?a
=> "a"
```

- Everything can embed in texts.

``` ruby
    puts "Everything can embed in text #{def name
    $name.capitalize + " "+$surname.upcase
    end} puts "My name #{name}""
```

***

``` ruby
    name="Ruby"
    surname="Rails"
    text = << ANYTHING
    I'm long text
    #{$name} #{$surname}
    ANYTHING
    p text
```

*
``` ruby
    swapcase
```
this command translate from lower case to uppercase.

*
``` ruby
    puts text.split.inspect
```
Try above method.



``` ruby
    text.sub 'm', 'a'  	#translate "m=>a"
    text.gsub  'm',  'a' 		#translate all  from "m" to "a" .
```


- For Convert to Integer

``` ruby
    .to_i
```

- For Convert to String

``` ruby
    .to_s
```

- For Convert to Array

``` ruby
    .to_a
```

- For Convert to Hash

``` ruby
    .to_h
```

## Symbols

- When we create symbol like,

``` ruby
    :symbol_name
```

- If content of text is changing generally, using symbol can be difficult, but using for constant process can be easy.

``` ruby
    object_id
```
Try command

-For Convert to Symbol

``` ruby
    .to_sym
```


##Regular expression

- Regular expression

```
    / ... /
```
writing in this tag.

```
    {2, 5} 		#this means min 2, max 5.
    /.{2,5}/ =~  # when we write "john", "john" between 2 and 5.
```

```
    ^a$b => starting with a, ending with b.
    (+) => how many
    [^0-9] if not number write it '^' this means that 'not'.
```

```
    [A-Za-z0-9_] = \w   	#word character
    [Â-Za-z0-9_] = \W 		#not a word character
```

```
    exp1 = /.*\.$/  		#this means ending with '.'
    exp2 = Regexp.new('^[a-z]+$')      #this means that starting with a ending with z.
    exp3 = %r{^[a-z]+$} 		#starting with a but not ending with z.
```