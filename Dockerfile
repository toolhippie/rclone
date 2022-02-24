FROM webhippie/ubuntu:20.10
ENTRYPOINT [""]

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y rclone rsync postgresql-client mariadb-client mongodb-clients && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
