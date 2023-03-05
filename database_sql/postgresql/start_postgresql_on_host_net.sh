docker run -d \
    --name postgresql \
    --net host \
    -e POSTGRES_PASSWORD=postgres \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v /var/docker_volumes/databases/postgresql/data:/var/lib/postgresql/data \
    postgres:14.6
