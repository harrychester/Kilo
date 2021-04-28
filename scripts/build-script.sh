cd ../builds/

docker build db/ -t kilo/iss_2021-db_i:latest

docker build web/ -t kilo/iss_2021-web_i:latest

cd ../scripts/
