FROM ghcr.io/dockhippie/alpine:3.23@sha256:a95a9a4236d9d8ea9250ac367ab8d83b161493788c5e05394c74ac5c95320875
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add rclone rsync postgresql-client mariadb-client mongodb-tools && \
  rm -rf /var/cache/apk/*
