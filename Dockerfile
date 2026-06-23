FROM ghcr.io/dockhippie/alpine:3.23@sha256:b96792d40b58aed3ca66b37fb7c44a860acef5324bee5bb3b48f817ae65de248
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  apk add rclone rsync postgresql-client mariadb-client mongodb-tools && \
  rm -rf /var/cache/apk/*
