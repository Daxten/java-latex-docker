FROM ubuntu:xenial
MAINTAINER Alexej Haak <alexej.haak@outlook.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update

RUN apt-get -y install default-jdk

RUN apt-get --yes --no-install-recommends --no-install-suggests install texlive texlive-lang-english texlive-lang-german \
        texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-math-extra && \
    apt-get --yes install texlive-xetex texlive-luatex

RUN apt-get --yes install fonts-linuxlibertine fonts-inconsolata fonts-oflb-asana-math && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*