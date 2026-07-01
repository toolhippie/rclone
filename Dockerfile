FROM ghcr.io/dockhippie/alpine:3.23@sha256:1cb712df5842561657169b93b1845cffa82de67560125cf22d49639566e32c1e
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add rclone rsync postgresql-client mariadb-client mongodb-tools && \
  rm -rf /var/cache/apk/*
