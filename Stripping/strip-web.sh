#!/bin/bash

## Strip Web
./strip-image  \
  -i kilo/iss_2021-web_i \
  -p nginx \
  -p php \
  -p php-mysqlnd \
  -p php-fpm \
  -p php-pdo \
  -p yum \
  -p epel-release \
  -p mkdir \
  -f /usr/share/nginx/html \
  -f /run/php-fpm/ \
  -f /usr/sbin/nginx \
  -f /etc/nginx/mime.types \
  -f /etc/nginx/conf.d/*.conf \
  -f /usr/sbin/sendmail \
  -f /etc/nginx/default.d/*.conf \
  -f /usr/sbin/php-fpm \
  -f /etc/nginx/nginx.conf \
  -f /usr/share/nginx/html \
  -f /var/run/php-fpm/php-fpm.sock \
  -f /usr/share/nginx/modules/*.conf \
  -f /etc/php.ini \
  -f /etc/php-fpm.d/www.conf \
  -f /etc/nginx/conf.d/php-fpm.conf \
  -f /run/php-fpm/www.sock \
  -f /docker-entrypoint.sh \
  -f /var/log/nginx/error.log \
  -f /etc/passwd \
  -f /var/lib/php/session \
  -f /var/log/php-fpm/www-error.log \
  -f /run/nginx.pid \
  -f /etc/nginx \
  -f /bin/bash \
  -f /var/log/php-fpm/www-slow.log \
  -f '/lib64/libnss*' \
  -f /bin/mkdir \
  -f /usr/bin/coreutils \
  -f /run/php-fpm/ \
  -f /var/log/php-fpm/error.log \
  -d webserver/Dockerfile \
  -t kilo/iss_2021-web_i-stripped

