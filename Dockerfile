FROM ubuntu:xenial
MAINTAINER Alexej Haak <alexej.haak@outlook.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    python-pygments gnuplot \
    make git default-jdk\
    && apt-get install -qy --no-install-recommends texlive-full \
    && rm -rf /var/lib/apt/lists/*