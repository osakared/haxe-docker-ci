FROM ubuntu:18.10

ENV DEBIAN_FRONTEND=noninteractive

# Install Node.js
RUN apt-get update
RUN apt-get install --yes curl gnupg2
RUN apt-get install --yes nodejs npm git
RUN apt-get install --yes build-essential software-properties-common python-pycurl python-apt
RUN add-apt-repository ppa:openjdk-r/ppa --yes && apt-get update && apt-get install -y --no-install-recommends openjdk-8-jdk
RUN LC_ALL=C.UTF-8  add-apt-repository --yes ppa:ondrej/php && apt-get update && apt-get install -y --no-install-recommends php7.1 php7.1-mbstring 
RUN apt-get install --yes gcc-multilib g++-multilib python3 mono-devel mono-mcs libglib2.0 libfreetype6 cmake luajit luarocks lua-sec lua-bitop lua-socket libpcre3-dev openjdk-8-jdk openjdk-8-jre
RUN npm install -g lix
RUN luarocks install luasec && luarocks install lrexlib-pcre PCRE_LIBDIR=/lib/x86_64-linux-gnu && luarocks install luv && luarocks install environ && luarocks install luautf8

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD ["/bin/bash"]
