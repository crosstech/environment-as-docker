docker run -d \
	  --name kafka \
	  -p 9092:9092 \
	  -v "/var/docker_volumes/message_brokers/kafka/kafka/data:/var/lib/kafka/data" \
	  -v "/var/docker_volumes/message_brokers/kafka/kafka/log:/var/lib/kafka/log" \
	  --restart always \
	  -e KAFKA_BROKER_ID=1 \
	  -e KAFKA_ZOOKEEPER_CONNECT=fordev:2128 \
	  -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://fordev:9092 \
	  -e KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 \
	  confluentinc/cp-kafka:7.0.1
