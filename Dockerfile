FROM ubuntu:xenial
MAINTAINER Alexej Haak <alexej.haak@outlook.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git default-jdk\
    && rm -rf /var/lib/apt/lists/*