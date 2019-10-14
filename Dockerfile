FROM alpine:3.10 as build

ARG PERCONA_XTRABACKUP_VERSION=8.0.7

RUN apk add curl cmake bison automake autoconf flex zip tar gzip wget

RUN curl -L https://github.com/percona/percona-xtrabackup/archive/percona-xtrabackup-${PERCONA_XTRABACKUP_VERSION}.tar.gz | tar xvz - -C percona-xtrabackup 
