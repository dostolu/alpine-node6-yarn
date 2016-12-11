FROM mhart/alpine-node:6

ENV PATH /root/.yarn/bin:$PATH

COPY ./install.sh install.sh

RUN apk update
RUN apk add curl bash binutils tar
RUN rm -rf /var/cache/apk/*
RUN /bin/bash
RUN touch ~/.bashrc
RUN chmod +x install.sh
RUN bash install.sh
RUN apk del curl tar binutils