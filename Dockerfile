FROM ubuntu:14.04

MAINTAINER Dmitry Pranchuk <d.pranchuk@gmail.com>

RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes software-properties-common python-software-properties
RUN apt-add-repository -y ppa:webupd8team/java
RUN apt-get -y update
RUN /bin/echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java7-installer oracle-java7-set-default

RUN wget http://ftp.byfly.by/pub/apache.org/zeppelin/zeppelin-0.6.1/zeppelin-0.6.1-bin-all.tgz
RUN tar xzf zeppelin-0.6.1-bin-all.tgz

ADD scripts/start-script.sh /start-script.sh
ADD scripts/configured_env.sh /configured_env.sh

EXPOSE 8080 8081
