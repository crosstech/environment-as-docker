docker run -d \
 	--name sql_server \
	-p 1433:1433 \
	-e ACCEPT_EULA=Y \
	-e SA_PASSWORD=sqlServerOnDocker123 \
	-v /var/docker_volumes/databases/sql_server/data:/var/opt/mssql \
	mcr.microsoft.com/mssql/server
