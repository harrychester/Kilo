sudo yum install --assumeyes selinux-policy-devel

docker network create --subnet=203.0.113.0/24 kilo/iss_2021_n

docker volume create kilo_database

cd ../builds/web; sudo make -f /usr/share/selinux/devel/Makefile docker_web-service.pp && sudo semodule -i docker_web-service.pp

cd ../db; sudo make -f /usr/share/selinux/devel/Makefile docker_db-service.pp && sudo semodule -i docker_db-service.pp

docker run -d -v kilo_database:/var/lib/mysql:rw --cap-drop ALL --cap-add CAP_DAC_READ_SEARCH --cap-add CAP_SETGID --cap-add CAP_SETUID  --security-opt label:type:docker_db-service_t --net kilo/iss_2021_n --ip 203.0.113.88 --hostname db.cyber.test -e MYSQL_ROOT_PASSWORD="CorrectHorseBatteryStaple" -e MYSQL_DATABASE="iss_db" --name kilo_iss_2021-db_c kilo/iss_2021-db_i 

sleep 10s

docker exec -i kilo_iss_2021-db_c mysql -uroot -pCorrectHorseBatteryStaple < sqlconfig/iss_db.sql

docker stop kilo_iss_2021-db_c

docker rm kilo_iss_2021-db_c
