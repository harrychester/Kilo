#!/bin/bash

## Strip DB
./strip-image  \
  -i kilo/iss_2021-db_i \
  -p mysql-common \
  -p libmysqlclient21:amd64 \
  -p libdbd-mariadb-perl \
  -p mariadb-backup \
  -p mariadb-client-10.5 \
  -p mariadb-client-core-10.5 \
  -p mariadb-common \
  -p mariadb-server \
  -p mariadb-server-10.5 \
  -p mariadb-server-core-10.5 \
  -f /etc/mysql/conf.d \
  -f /var/run/mysqld/mysqld.pid \
  -f /var/run/mysqld/mysqld.sock \
  -f /var/log/mysql/error.log \
  -f /etc/passwd \
  -f /var/tmp \
  -f /tmp \
  -f /run/mysqld \
  -f /mysql \
  -f /var/lib/mysql \
  -f /usr/sbin/mysqld \
  -f /bin/awk \
  -f /bin/bash \
  -f /bin/cat \
  -f /var/lib/mysql/aria_log_control \
  -f /bin/chmod \
  -f /bin/chown \
  -f /bin/date \
  -f /bin/find \
  -f /bin/id \
  -f /bin/ls \
  -f /bin/mkdir \
  -f /bin/mktemp \
  -f /bin/sleep \
  -f '/lib/\*/libnss*' \
  -f docker-entrypoint.sh \
  -f '/usr/share/mysql/*.sql' \
  -d dbserver/Dockerfile \
  -t kilo/iss_2021-db_i-stripped
