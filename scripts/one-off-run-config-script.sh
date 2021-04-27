docker network create --subnet=203.0.113.0/24 kilo/iss_2021_n

docker volume create kilo_database

docker run -d -v kilo_database:/var/lib/mysql:rw --cap-drop ALL --cap-add CAP_DAC_READ_SEARCH --cap-add CAP_SETGID --cap-add CAP_SETUID  --security-opt label:type:kilo_db_t --net kilo/iss_2021_n --ip 203.0.113.88 --hostname db.cyber.test -e MYSQL_ROOT_PASSWORD="CorrectHorseBatteryStaple" -e MYSQL_DATABASE="iss_db" --name kilo_iss_2021-db_c kilo/iss_2021-db_i 

docker exec -i kilo_iss_2021-db_c mysql -uroot -pCorrectHorseBatteryStaple < dbserver/sqlconfig/iss_db.sql

docker stop kilo_iss_2021-db_c

docker rm kilo_iss_2021-db_c

