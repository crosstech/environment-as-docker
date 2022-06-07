docker run -d \
	  --name redis \
	  -p 6379:6379 \
	  -v /var/docker_volumes/redis/data:/data \
	  redis
