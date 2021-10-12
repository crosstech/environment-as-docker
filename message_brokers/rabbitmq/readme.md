# MessageBrokers/RabbitMQ

With start and stop scripts; you can run single instance RabbitMQ in you local environment using Docker.

## Interfaces

WebUI interface url is: [http://127.0.0.1:15672/](http://127.0.0.1:15672/)

## Persistance

You can use Docker volume for persistant RabbitMQ data. For this example we used "/var/docker_volumes/message_brokers/rabbitmq" directory for storing data on local machine.

```sh
-v "/var/docker_volumes/message_brokers/rabbitmq/data:/var/lib/rabbitmq" \
-v "/var/docker_volumes/message_brokers/rabbitmq/log:/var/log/rabbitmq" \
```

If you got error in Docker logs as "Permission denied to write log file", you need to change log directory permission is 777.

```sh
chmod 777 /var/docker_volumes/message_brokers/rabbitmq/log
```
