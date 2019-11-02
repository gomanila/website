FROM golang:1.13.4-alpine
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

# Used for debian-based OS
# RUN wget https://github.com/gohugoio/hugo/releases/download/v0.59.0/hugo_extended_0.59.0_Linux-64bit.deb \
# 	&& dpkg -i hugo_extended_0.59.0_Linux-64bit.deb \
# 	&& rm hugo_extended_0.59.0_Linux-64bit.deb

# Used for Alpine
RUN apk add --no-cache git
#
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.59.1/hugo_extended_0.59.1_Linux-64bit.tar.gz \
    && mkdir hugo_0.59.1 \
    && tar -zxvf hugo_extended_0.59.1_Linux-64bit.tar.gz -C ./hugo_0.59.1/ \
    && cd hugo_0.59.1/ \
    && mv hugo /bin/ \
    && cd .. && rm -rf hugo*

