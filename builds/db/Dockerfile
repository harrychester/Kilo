# Database Dockerfile

FROM mariadb:10

COPY configfiles/mysqld.cnf  /mysql/mysql.conf.d/mysqld.cnf
COPY docker-entrypoint.sh /

RUN chmod 777 /var/lib/mysql /var/tmp /usr/sbin/mysqld /mysql/mysql.conf.d /docker-entrypoint.sh
RUN touch /var/lib/mysql/aria_log_control

EXPOSE 3306

ENTRYPOINT ["/bin/bash", "/docker-entrypoint.sh"]

CMD ["/usr/sbin/mysqld", "--user=root"]

