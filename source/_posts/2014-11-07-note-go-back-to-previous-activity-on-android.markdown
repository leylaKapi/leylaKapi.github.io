---
layout: post
title: "Note: Go back to previous activity on Android"
date: 2014-11-07 17:33:09 +0200
comments: true
categories: android activity method start-learning intent mobile connection pages en
---

### Method for go previous activity

If you make connection between first and second activity, this means, you can go to from first activity to second activity
but you can not return to previous page, for return to first page, we can use very common method, `onBackPressed()`.
     
Where you want to use button for return from second to first, open your `secondactivity.xml`
       
```xml
<Button
    android:layout_width="fill_parent"
    android:layout_height="wrap_content"
    android:onClick="ReturnHome"
    android:text="Return Previous Page" />
```
      
Then we getting, what is the `android:onClick` name, you can give the what you want name for `onClick` but can be 
careful for use in `java`, open `SecondActivity.java` write below code 

```java
public void ReturnHome(View view){
    super.onBackPressed();
}
```

That 's all, now you can go back to previous activity.

I hope helped to you.
      
         
      
