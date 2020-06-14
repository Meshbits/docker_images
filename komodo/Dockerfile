FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq -y \
  && ACCEPT_EULA=Y apt-get upgrade -qq -y \
  && apt-get install -qq -y \
  build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool \
  libncurses-dev unzip clang libsodium-dev ncurses-dev git python3 python3-zmq \
  curl mingw-w64 zlib1g-dev wget bsdmainutils automake libboost-all-dev \
  libssl-dev libprotobuf-dev protobuf-compiler libqrencode-dev libdb++-dev ntp \
  ntpdate software-properties-common libevent-dev cmake python3-dev \
  python3-setuptools python3-pip libcurl4-openssl-dev \
  && apt-get clean -qq -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*