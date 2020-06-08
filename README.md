# Dockerfile for Lantern 

About Lantern:
- https://getlantern.org/
- https://github.com/getlantern/lantern-binaries

Lastest verified for Lantern 5.9.10. @ 2020.6.9

## Default ports for docker image:
- 3128 tcp -> Http(s) proxy port
- 3129 tcp -> Socks5 proxy port
- 8080 tcp -> Lantern UI

## Pull from dockerhub:
```docker pull xiaoqingfeng999/lantern```

## Build yourself :
```docker build -t just4id/lantern-docker https://raw.githubusercontent.com/xiaoqingfengATGH/lantern/master/Dockerfile```

## Run：
```docker run -itd --restart=always --name lantern -p 3128:3128 -p 3129:3129 -p 8080:8080 just4id/lantern-docker```


Use http://127.0.0.1:8080/lantern to access lantern UI (to monitor lantern status and upgrade to PRO version).
