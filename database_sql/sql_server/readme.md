# MessageBrokers/RabbitMQ

With start and stop scripts; you can run single instance SQL Server in you local environment using Docker.

## IP and Port 

IP is your loopback address and port is default SQL Server port as "1433".

## Credentials

Default username is "sa" and password is what you provided in "start_sqlserver.sh" script. 

If you got error in Docker logs as "Provided password violate the Sql Server password policy...", you need to make your password strong. Because Sql Server forces you to choose strong password for system admin. The strength of password in start script is enough for SQL Server password policy.

## Persistance

You can use Docker volume for persistant RabbitMQ data. For this example we used "/var/docker_volumes/message_brokers/rabbitmq" directory for storing data on local machine.

```sh
-v /var/docker_volumes/databases/sql_server/data:/var/opt/mssql \
```

If you got error in Docker logs as "Permission denied...", you need to change data directory permission as 777. Because default user in this Docker image is mssql.

```sh
chmod 777 /var/docker_volumes/databases/sql_server/data
```
