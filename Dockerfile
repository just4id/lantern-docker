FROM ubuntu:18.04
MAINTAINER Jacky Zhang <just44id@aol.com>
# https://github.com/just4id/lantern-docker
# lastest lantern version: 5.9.10
WORKDIR /root
RUN apt-get update  && \
         apt-get -y install wget libwebkit2gtk-4.0-37 libappindicator3-1 && \
	 wget -O lantern.deb https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer-64-bit.deb?ver=5.9.10 && \
	 wget -O settings.yaml https://raw.githubusercontent.com/just4id/lantern-docker/master/settings.yaml?ver=5.9.10 && \
         dpkg -i lantern.deb && \
         rm -rf lantern.deb && \
         apt-get -f install && \
         apt-get clean && \
         rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
         mkdir /root/.lantern && \
         mv settings.yaml /root/.lantern/settings.yaml

EXPOSE 3128/tcp 8080/tcp 3129/tcp

ENTRYPOINT ["/usr/bin/lantern", "--configdir=/root/.lantern", "--headless=true"]
