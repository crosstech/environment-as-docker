docker run -d \
	  --name zookeeper \
	  -p 2128:2128 \
	  -p 2888:2888 \
	  -p 3888:3888 \
	  -p 8080:8080 \
	  -v "/var/docker_volumes/message_brokers/kafka/zookeeper/data:/var/lib/zookeeper/data" \
	  -v "/var/docker_volumes/message_brokers/kafka/zookeeper/log:/var/lib/zookeeper/log" \
	  --restart always \
	  -e ZOOKEEPER_TICK_TIME=10000 \
	  -e ZOOKEEPER_TICK_TIME=2000 \
	  -e ZOOKEEPER_SYNC_LIMIT=2 \
	  -e ZOOKEEPER_MAX_CLIENT_CNXNS=100 \
	  -e ZOOKEEPER_CLIENT_PORT=2181 \
      -e ZOOKEEPER_SERVER_ID=1 \
      -e ZOOKEEPER_SERVERS=fordev:2888:3888 \
	  confluentinc/cp-zookeeper:7.0.1
