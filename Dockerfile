FROM ubuntu:16.04

RUN apt-get -y update &&  \
	apt-get -y install texlive-full graphviz git

COPY maketex /usr/bin/maketex

VOLUME /home/work/project

WORKDIR /home/work/project

ENTRYPOINT ["maketex"]
