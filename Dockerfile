FROM ghcr.io/dockhippie/alpine:3.23@sha256:9d02517b6423d07d763d4eff86f19dc0d329791380e946438822137c9244da30
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add rclone rsync postgresql-client mariadb-client mongodb-tools && \
  rm -rf /var/cache/apk/*
