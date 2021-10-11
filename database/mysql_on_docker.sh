docker run -d \
	--name mysql \
    	-p 3306:3306 \
	-v /var/database/mysql/data:/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=rootroot \
	mysql:latest
