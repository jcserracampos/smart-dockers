# Smart Docker Base
#
# VERSION 1.0.0

FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive


RUN apt update \
&&  apt upgrade -y \
&&  apt install -y \
        curl \
        gnupg2 \
        dirmngr \
        git-core \
        zlib1g-dev \
        build-essential \
        libssl-dev \
        libreadline-dev \
        libyaml-dev \
        libsqlite3-dev \
        sqlite3 \
        libxml2-dev \
        libxslt1-dev \
        libcurl4-openssl-dev \
        software-properties-common \
        libffi-dev \
&&  apt clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# Change Timezone
RUN echo "America/Sao_Paulo" > /etc/timezone \
&&  dpkg-reconfigure -f noninteractive tzdata