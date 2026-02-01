FROM ghcr.io/dockhippie/alpine:3.23@sha256:290fa97fc3c00802b2a80f40cc21cdd5e6534a4422dcdb0abd57738ac08e86bf
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add rclone rsync postgresql-client mariadb-client mongodb-tools && \
  rm -rf /var/cache/apk/*
