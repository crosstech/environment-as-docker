# Environment as Docker

This project created for helping users to create environment as docker.

## Tools

### CI/CD

- Jenkins

### SQL Databases

- MariaDB
- MySQL
- PostgreSQL
- SQL Server

### NoSQL Databases

- MongoDB

### Distributed Caching

- Redis

### Git Servers

- Gogs

### Message Brokers

- RabbitMQ
- Kafka

### Registries

- Docker Registry

## Notes

### Port Errors

- If you can't access tools correctly; you can use  network features like indicating network as your host machine. 
For example: you want to access PostgreSQL after running this command;

```sh
docker run -d \
    --name postgresql \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=postgres \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v /var/docker_volumes/databases/postgresql/data:/var/lib/postgresql/data \
    postgres
```

If you can't access your docker container; you can use host network for simple solution;

```sh
docker run -d \
    --name postgresql \
    --net host \
    -e POSTGRES_PASSWORD=postgres \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v /var/docker_volumes/databases/postgresql/data:/var/lib/postgresql/data \
    postgres
```

