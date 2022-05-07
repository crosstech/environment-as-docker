docker run -d \
    --name mongodb \
    -p 27017-27019:27017-27019 \
    -e MONGO_INITDB_ROOT_USERNAME=admin \
	-e MONGO_INITDB_ROOT_PASSWORD=password \
    -v /var/docker_volumes/databases/mongodb/data:/data/db \
    mongo
