FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN ldconfig /usr/local/lib
RUN apt install --yes curl gnupg2 git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt install --yes nodejs && npm install -g lix && neko || true
RUN apt-get install --yes build-essential software-properties-common python-pycurl python-apt libssl-dev
RUN add-apt-repository ppa:openjdk-r/ppa --yes && apt-get update && apt-get install -y --no-install-recommends openjdk-8-jdk
RUN LC_ALL=C.UTF-8  add-apt-repository --yes ppa:ondrej/php && apt-get update && apt-get install -y --no-install-recommends php7.1 php7.1-mbstring 
RUN apt-get install --yes gcc-multilib g++-multilib python3 python3-pip mono-devel mono-mcs libglib2.0 libfreetype6 cmake luajit luarocks lua-sec lua-bitop lua-socket libpcre3-dev openjdk-8-jdk openjdk-8-jre
RUN luarocks install luasec && luarocks install lrexlib-pcre PCRE_LIBDIR=/lib/x86_64-linux-gnu && luarocks install luv && luarocks install environ && luarocks install luautf8
# Okay let's install hl
RUN apt-get install --yes libpng-dev libturbojpeg-dev libvorbis-dev libopenal-dev libsdl2-dev libmbedtls-dev libuv1-dev && curl -0 -L https://github.com/HaxeFoundation/hashlink/archive/1.11.tar.gz --output hl.tar.gz && tar -xzvf hl.tar.gz && cd hashlink-1.11 && make && make install

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV LD_LIBRARY_PATH=/usr/local/lib

CMD ["/bin/bash"]
