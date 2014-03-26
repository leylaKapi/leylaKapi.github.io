---
layout: post
title: "How do google-analytics add to octopress?"
date: 2014-03-26 03:31:32 +0200
comments: true
categories: google, google-analytics, octopress
---

### Google - analytics for Octopress

Firstly, if you don't have a google-analytics account, you should create it. Then when you create account, google-analytics provide to **tracking ID** for your octopress blog. This tracking ID like

    AB-12345678-9
  
and then you should get this id, opened *_config.yml* in your octopress blog project,

    #_config.yml
    
    #Google Analytics
    google_analytics_tracking_id: AB-12345678-9
    
That's all.    
