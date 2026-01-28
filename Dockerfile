FROM ghcr.io/dockhippie/alpine:3.23@sha256:a674aadc1cccd2f424673c7596eff46336210016a50c8082849071f78bb15105
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add rclone rsync postgresql-client mariadb-client mongodb-tools && \
  rm -rf /var/cache/apk/*
