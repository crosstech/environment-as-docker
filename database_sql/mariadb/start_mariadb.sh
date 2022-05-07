docker run -d \
	--name mariadb \
    	-p 3306:3306 \
	-v /var/docker_volumes/databases/mariadb/data:/var/lib/mysql \
	-e MARIADB_ROOT_PASSWORD=rootroot \
	-e MYSQL_ROOT_PASSWORD=rootroot \
	mariadb:10.1.44
