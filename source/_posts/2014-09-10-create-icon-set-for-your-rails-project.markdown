---
layout: post
title: "Create icon set for your rails project"
date: 2014-09-10 17:23:26 +0300
comments: true
categories: rails icon-set ico-moon font css js  
---

### How created your icon-set for your rails project ?

- Firstly, you should go to [icomoon.io](https://icomoon.io/) website.
- You need to create new app on right-up corner of webpage
- Now upload your font-icons after press `import icons` buttons,
- Be careful, because your fonts format must be `svg` format,
- When upload your icons, you should rename your icons,
- Now select which rename icons, and go to download your icons,
- When you download icomoon which provide to you with `css` and `js` files for font.
- When you are opening which download file, you can see this file and copy `font` directory and 
paste in your assets for rails projects.
- Go to css file in which download icomoons files, copy `css` file and paste in your style file
(If you are using sass or less, you should convert to sass or less). 
Another way, you can create new file in stylesheet folder like 

```css 
_icon.css.sass
```

file then paste in this file all icomoon-css. Then you should add your base style file like,

```css
@import 'icon'
```

Now, you can use your icon set in your `html` 

```html
<span class = 'your_icon_name' />      /
```

or `haml` page like

```haml
%span.your_icon_name               
```

If you want,  you can add some properties like, in your font css file maybe you want to change size your icons automatically,
in your haml file, 

```haml
%span.bf_mobile.bf-4x
```
like above when you write `.bf-4x`, your font -size should be 4 times bigger.

in your `_icon.css.sass`

```css
.bf-4x
    font-size: 4em
```

like above you can add a lot of properties for your icons and make private for your rails projects.
 
 That' s all.
 
 I hope helped to you.


 