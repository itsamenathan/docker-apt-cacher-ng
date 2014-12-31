FROM debian:wheezy

MAINTAINER Nathan W. <nathan@frcv.net>

RUN apt-get --quiet --yes update && \ 
    apt-get --quiet --yes install \
      apt-cacher-ng \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

VOLUME ["/etc/apt-cacher-ng"]

EXPOSE 3142

CMD chmod 777 /var/cache/apt-cacher-ng && /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*

