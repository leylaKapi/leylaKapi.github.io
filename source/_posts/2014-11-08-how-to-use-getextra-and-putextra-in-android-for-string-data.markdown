---
layout: post
title: "How to use getExtra and putExtra in Android for string data"
date: 2014-11-08 14:21:19 +0200
comments: true
categories: getExtra putExtra android mobile application user string data get set put en 
---

### Use getExtra and putExtra

You want to get some information like name, surname, email when user login on Android, and show on 
second activity these information , we can use getExtra and putExtra . There are a lot of method for getting information
from first to second activity, I try to explain getting with getExtra and putExtra on getting user name and surname to 
show second activity, let 's start,

- Firstly I created two label(TextView) for definition to name and surname and EditText for enter name and surname to users 
on `activity_main.xml`,

- Then we created new class under `src` folder and under the package name `SecondActivity.java`, and under the 
`/res/layout/` folder created `secondactivity.xml` .

- For definite and connect between main and second activity open `AndroidManifest.xml` and create new `activity` for
second .

```xml
<activity 
    android:name=".SecondActivity"
    android:label="Second Activity"
    >
    <intent-filter >
        <action android:name="com.example.package_path.SecondActivity"/>
        <category android:name="android.intent.category.DEFAULT" />       
    </intent-filter>  
</activity>
```
 
- After that we need to create button on `activtiy_main.xml` after click this button goes the second activity .
 
```xml
<Button
     android:id="@+id/button1"
     android:layout_width="fill_parent"
     android:layout_height="wrap_content"
     android:layout_alignTop="@+id/textView1"
     android:layout_centerHorizontal="true"
     android:layout_marginTop="50dp"
     android:onClick="onClick"
     android:text="Sign in" />
``` 

On `MainActivity.java`

```java
public void onClick(View view){
    startActivity(new Intent("com.example.package_path.SecondActivity"));
}
```

Now when you click on `Sign in` button, you should go to second activity, 

- After you need to add TextView to `secondactivity.xml` 

```xml
<TextView
    android:id="@+id/textView1"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:layout_marginTop="10dp"
    android:textColor="#0000ff"
    android:textSize="25dp"
    android:text="Welcome !" />
```

Now we can getting to username and surname from EditTexts and show instead of TextView on `Second Activity`.


Firstly open `MainActivity.java` and write below

```java
	public class MainActivity extends ActionBarActivity {
    	@Override
    	public void onCreate(Bundle savedInstanceState) {
    		super.onCreate(savedInstanceState);
    		setContentView(R.layout.activity_main);
    	}
    	public void onClick(View view){ 		
    		EditText etName1 = (EditText) findViewById(R.id.editText1);
    		EditText etName2 = (EditText) findViewById(R.id.editText2);
    		Intent intent = new Intent(MainActivity.this, SecondActivity.class);
    		intent.putExtra("name", etName1.getText()+" "+etName2.getText());
    		startActivity(intent);		
    	}
```


After write above on `SecondActivity`

```java
public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.secondactivity);		
		TextView txtView = (TextView) findViewById(R.id.textView1);
		Intent intent = getIntent();
		Bundle bd = intent.getExtras();		
		if(bd != null)
		{
			String getName = (String) bd.get("name");
			txtView.setText(getName);			
		}
	}
```

That 's it . Now you should enter your username and surname to editText after you can see your name and surname 
on `Second Activity`.

I hope helped to you.

