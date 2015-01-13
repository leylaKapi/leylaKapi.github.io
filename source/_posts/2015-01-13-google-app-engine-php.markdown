---
layout: post
title: "Google App Engine - PHP"
date: 2015-01-13 23:14:20 +0200
comments: true
categories: google app engine php start deploy tool programming tr
---

### App engine ve PHP 

Uzun zamandır ingilizce olarak yazdığım yazılara ufak bir ara verip, türkçe yazılar paylaşmaya çalışacağım. 
Tabi amaç dile yatırım yapmak, neyse lafı daha fazla uzatmadan biz konumuza dönelim. Bu yazımda, App engine ile PhpStorm
üzerinde nasıl çalışır, nasıl proje oluşturulur ve nasıl deploy edilir işlemlerinden bahsetmeye çalışacağım.

#### Google App Engine 

Öncelikle herhangi bir google hesabınızla [Google App engine](https://appengine.google.com/) sisteme giriş yapmanız,
hesabınız yoksada basit bir google hesabı oluşturmanız gerekmekte, siz hesabı oluşturduktan sonra google size ücretsiz 
25 repoluk bir sistem oluşturuyor. Giriş yaptığınız sistemden öncelikle bir proje oluşturuyorsunuz. Sistemde proje oluştururken
dikkat etmeniz gereken nokta **Application Identifier** kısmı zira burda aslında sayfanızın url kısmını belirlemiş oluyorsunuz (proje_id.appspot.com).
Tabi belirledikten sonra daha önce böyle bir adres kullanılmışmı diye kontrol etmeniz gerekmektedir, yoksa projeyi oluşturamıyorsunuz.

Ardından localinizde PhpStorm'u çalıştırıp, *Create New Project* kısmından yeni bir proje oluşturup, 

```
Project name: blog-leylakapi
Location: /Workspace/PhpstormProjects/blog-leylakapi
Project type: App engine Project
```

kısımlarını girdikten sonra, Phpstorm sizden 

```
Application ID: blog-leylakapi
SDK directory: /home/leylakapi/google_appengine
Python executable: /usr/bin/python
```

<!-- more -->


doldurmanızı isteyecektir. Projeyi oluşturduktan sonra, Phpstorm otomatik olarak, size `app.yaml` ve `main.php`
diye 2 tane dosya oluşturacaktır. İçeriklerine bakacak olursak,

```yaml
----- app.yaml
application: blog-leylakapi
version: 1
runtime: php
api_version: 1
threadsafe: true
handlers:
- url: .*
  script: main.php
```
ve 

```php
----- main.php
<?php
echo 'Hello, world!';
```
Yaml ile ilgili [daha fazla](https://cloud.google.com/appengine/docs/php/config/appconfig) bilgi için,

Projemizi oluşturduktan sonra, her programcının yaptığı gibi, yada benim yaptığım gibi proje çalışıyormu diye bir 
test etmek, onun içinde

**<google_appengine folder path>/dev_appserver.py <php_executable_path> <project_path>**

```bash
$ cd 
$ google_appengine/dev_appserver.py --php_executable_path=/usr/bin/php-cgi /home/leylakapi/PhpstormProjects/blog-leylakapi
```
yukardaki komutu terminalden koşunca, size iki adres verecektir, 

http://localhost:8080 ve http://localhost:8000 dir. http://localhost:8000 sizi google app engine sistemine götürecek
(http://localhost:8000/instances), http://localhost:8080/ ise size projenizin çıktısını verecektir. Bizimki basit bir 
"Hello World" uygulaması olduğu için sistemde **Hello World** yazısını görmemiz gerekmekte. Eğer sistemde herhangi bir hata yoksa
devam edelim ancak varsada bunun nedeni "php_executable_path" olacaktır. Düzeltmek için PhpStorm içinde 
*Run > Edit Configurations* içine girip `php-cgi` yolunu projenizi çalıştırırken yazdığınız `executable path` 'ini girmeniz gerekmektedir.

Bu aşamada basit bir `GAE` projesi oluşturduk ve çalıştırdık, şimdi deploy etme zamanı,

*Phpstorm > Tools > Google App Engine For PHP > Upload App Engine PHP app..* gidip projemizi google'a upload ediyoruz,
bu işlemi yaparken bizden eposta ve şifremizi doğruladıktan sonra, IDE içinde,

```bash
/usr/bin/python /home/leylakapi/google_appengine/appcfg.py -e leylakapi@gmail.com --passin --no_cookies -R --runtime=php update .
12:12 AM Application: blog-leylakapi; version: 1
12:12 AM Host: appengine.google.com
12:12 AM 
Starting update of app: blog-leylakapi, version: 1
12:12 AM Getting current resource limits.
Password for leylakapi@gmail.com: 12:12 AM Scanning files on local disk.
Error 404: --- begin server output ---
This application does not exist (app_id=u'blog-leylakapi').
--- end server output ---
Process finished with exit code 1
```
çıktısını alabilirsiniz. Ardından [Google developers console](https://console.developers.google.com/project) gidip,
projenizin üzerine tıklayıp açılan pencerede solda *Source Code > Browse* tıklayıp **Create Repository** kısmından 
bir repo oluşturuyoruz. Ardından terminale geçmeden önce *Source Code > Releases* kısmından **Release Pipeline** oluşturup,
`Deploy` 'u seçip, her deploy işleminde mail ile bilgilendirme gönderilmesini sağlıyorsunuz.
Ardından terminalinize geçebilirsiniz. Aslında daha önce github'a veya herhangi bir versiyonlama sistemi ile çalışmışsanız
deploy işlemi size çok kolay gelecektir.

```bash
$ cd blog-leylakapi
$ gcloud auth login //ile browserınızdan girişinizi doğrulamanız gerekmekte
$ gcloud init blog-leylakapi
$ git init
$ git add .
$ git commit -m "commit-message"
$ git remote add google https://source.developers.google.com/p/blog-leylakapi/ 
$ git push google master 
Counting objects: 17, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (11/11), done.
Writing objects: 100% (17/17), 4.51 KiB | 0 bytes/s, done.
Total 17 (delta 0), reused 0 (delta 0)
remote: Storing objects: 100% (17/17), done.
remote: Processing commits: 100% (1/1), done.
remote: Triggering release (if applicable)...
remote: View results at: https://console.developers.google.com/project/837610927376/clouddev/pipelines/6254814975492096_P27doksWWBM_80fc5cc6cde1a4b611407437b489cb5d1a1e7f2c
remote: Running...
remote: Created deployment: blog-leylakapi.pipelines.blog-leylakapi-303bb8035070999231.deployment_6254814975492096_1421188115759
remote: Uploaded 2 files.
remote: Deployment completed.
To https://source.developers.google.com/p/blog-leylakapi/
 * [new branch]      master -> master
```
Yukarıdaki kodları sırasıyla terminalinizde çalıştırdığınızda sorunsuz bir şekilde deploy etmiş olacaksınız.
Şimdi yapmanız gereken tek şey, Kodların upload olup olmadığını kontrol etmek, onun içinde, 
*Source Code > Browse* sayfasını **Google Developers Console** içinde sayfayı yenilemek olacaktır. 
Ayrıca deploy edilip edilmediğinide sistemde görmek için *Source Code > Releases* sayfasına gitmeniz gerekecektir.

Geriye sadece adresinizi **your_id.appspot.com** şeklinde kontrol etmek kalıyor. 
**[http://blog-leylakapi.appspot.com/](http://blog-leylakapi.appspot.com/)**

Daha fazla bilgi için:

[google-app-engine-php-getting-started/](http://www.sitepoint.com/google-app-engine-php-getting-started/)

[appengine-php-doc](https://cloud.google.com/appengine/docs/php/)

sayfalarını ziyaret edebilirsiniz. Umarım yararlı olmuştur.