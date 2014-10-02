---
layout: post
title: "Trick: Add page number with javascript ?"
date: 2014-10-02 21:32:05 +0300
comments: true
categories: pagination js  haml number pages frontend 
---

### How can you show page number in js ?

If you create middleman or rails project and you want to add pagination in your pages with js. 
You can make easily with below codes

```js
  var numberOfPages = 14;
  function addPage(page, book) {
    if (!book.turn('hasPage', page)) {
      setTimeout(function(){
        element.html('<div class="data">Data for page '+page+'</div>');
      }, 14);
    }
  }
    $('#number-pages').html(numberOfPages);
```
in haml page can be like 

```haml
#controls
  %label{:for => "page-number"} Page:
  %input#page-number{:size => "3", :type => "text"}/
  of
  %span#number-pages
```

now you can try easily this `js` trick.

That's all .
I hope helped to you.