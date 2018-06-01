# angular-docker

[![Docker Repository on Quay](https://quay.io/repository/oh-my-docker/angular/status "Docker Repository on Quay")](https://quay.io/repository/oh-my-docker/angular)

Play angular just through docker and without installing any angular and node software on your computer

```bash
docker pull quay.io/oh-my-docker/angular
```

## create angular project

create a new angular project called ``demo`` and located on ``/Users/penxiao/tmp/angular-docker`` through docker volume.

```bash
docker run --rm -it -v /Users/penxiao/tmp/angular-docker:/omd quay.io/oh-my-docker/angular:latest ng new demo
```

## only build

```bash
docker run -it --rm -v /Users/penxiao/tmp/angular-docker/demo:/omd quay.io/oh-my-docker/angular:latest ng build --prod --build-optimizer
```

## build and serve angular project

for example, our angular project is demo in ``/Users/penxiao/tmp/angular-docker/demo``

```bash
$ docker run -d --rm --name=angular-demo -it -v /Users/penxiao/tmp/angular-docker/demo:/omd -p 4200:4200 quay.io/oh-my-docker/angular:latest ng serve --host=0.0.0.0
b6c0b0b3a19325f7e42b5c7ec86d6ddef5b1822d70419e0361acf6f2b294c86d
```

check logs

```bash
$ docker logs angular-demo -f
** Angular Live Development Server is listening on 0.0.0.0:4200, open your browser on http://localhost:4200/ **

Date: 2018-05-21T06:10:59.583Z
Hash: c81cc3c9f7977164505e
Time: 14041ms
chunk {main} main.js, main.js.map (main) 10.6 kB [initial] [rendered]
chunk {polyfills} polyfills.js, polyfills.js.map (polyfills) 227 kB [initial] [rendered]
chunk {runtime} runtime.js, runtime.js.map (runtime) 5.22 kB [entry] [rendered]
chunk {styles} styles.js, styles.js.map (styles) 15.6 kB [initial] [rendered]
chunk {vendor} vendor.js, vendor.js.map (vendor) 3.37 MB [initial] [rendered]
ℹ ｢wdm｣: Compiled successfully.

```

open browser on localhost:   http://127.0.0.1:4200/

![image](demo.png)

## Welcome to subcribe MY WeChat official account

欢迎大家订阅我的公众号，会不定期分享一些容器，网络，和编程相关技术文章。

![QR](https://github.com/xiaopeng163/statistic/blob/master/QR/MY_WeChat_official_account.jpg)
