docker run \
--detach --name world-db \
--publish 3306:3306 \
--env MARIADB_USER=example-user \
--env MARIADB_PASSWORD=user-password \
--env MARIADB_ROOT_PASSWORD=root-secret-password \
--env MARIADB_DATABASE=world-db \
--volume world-db:/var/lib/mysql \
--network world-app \
mariadb:jammy

docker pull phpmyadmin:5.2.0-apache

docker container run --network world-app --name phpmyadmin -d -e PMA_ARBITRARY=1 -p 8080:80 phpmyadmin:5.2.0-apache

