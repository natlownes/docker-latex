FROM ubuntu:14.04
MAINTAINER Nat Lownes <nat.lownes@gmail.com>

RUN apt-get update

RUN apt-get install -y \
    texlive-latex-base texlive-xetex latex-xcolor texlive-math-extra \
    texlive-latex-extra texlive-fonts-extra \
    curl wget git fontconfig make
RUN apt-get install -y uuid-runtime

ADD process.bash /root/
RUN chmod +x /root/process.bash

ENTRYPOINT /root/process.bash -
