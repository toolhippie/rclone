FROM ghcr.io/dockhippie/alpine:3.22@sha256:555ec6b7c1727c1fc1be25d4e4cfb0e8bdab9ab1931a20365a873e5e21e4ff18
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add rclone rsync postgresql-client mariadb-client mongodb-tools && \
  rm -rf /var/cache/apk/*
