FROM golang:1.10.3-alpine

RUN mkdir -p /go/bin \
    && apk update \ 
    && apk add curl git openssh \
    && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
    && apk del curl
