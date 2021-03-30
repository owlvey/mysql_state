docker stop owlvey-mysql
sleep 10
docker run -d --rm --name owlvey-mysql -e MYSQL_ROOT_PASSWORD=thefalcon123 -e MYSQL_DATABASE=owlveydb  -p 3306:3306 mysql:8.0.23
sleep 20
flyway -configFiles="local.conf" info
flyway -configFiles="local.conf" clean
flyway -configFiles="local.conf" info
flyway -configFiles="local.conf" migrate
flyway -configFiles="local.conf" info
