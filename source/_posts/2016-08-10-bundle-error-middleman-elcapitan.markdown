---
layout: post
title: "Bundle error middleman El-capitan"
date: 2016-08-10
comments: true
categories: bundle error elcapitan middleman ruby gem openssl
---

If your computer has OSX 10.11 El Capitan, and try to create middleman project then  write `bundle` to install gems. But you can get 
 
```bash
Installing eventmachine 1.0.7 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.
In file included from binder.cpp:20:
./project.h:116:10 fatal error: 'openssl/ssl.h' file not found
include <openssl/ssl.h>
1 error generated
```

like above error. You have to solve problem with `openssl` .
For fix it ;

```bash
brew link openssl --force
```

then you can run `bundle` now. For detail about this problem please look at [this link](https://github.com/eventmachine/eventmachine/issues/643)

I hope helped to you .