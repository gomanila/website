FROM golang:1.13.3-buster
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.59.0/hugo_extended_0.59.0_Linux-64bit.deb \
	&& dpkg -i hugo_extended_0.59.0_Linux-64bit.deb \
	&& rm hugo_extended_0.59.0_Linux-64bit.deb