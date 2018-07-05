FROM alpine:3.7
MAINTAINER Iulian N. <support@spartanphp.com>

RUN apk add --update python python-dev py-pip

RUN pip install --upgrade pip
RUN pip install mkdocs
RUN pip install mkdocs-material
RUN pip install pymdown-extensions

RUN rm -rf /var/cache/apk/*

VOLUME ["/docs"]
WORKDIR /docs
