FROM golang:1.10.3-alpine

RUN mkdir -p /go/bin \
    && apk update \ 
    && apk add curl git openssh \
    && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
    && mv /go/bin/dep /usr/bin/dep \
    && chmod +x /usr/bin/dep \
    && apk del curl
