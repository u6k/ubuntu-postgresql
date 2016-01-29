FROM ubuntu:latest
MAINTAINER u6k <u6k.apps@gmail.com>

RUN apt-get update && \
    apt-get install -y postgresql

USER postgres

EXPOSE 5432

CMD ["/usr/lib/postgresql/9.3/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.3/main/postgresql.conf"]
