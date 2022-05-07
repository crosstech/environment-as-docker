docker run -d \
  --name=zk-vols \
  --net=host \
  --user=12345 \
  -e ZOOKEEPER_TICK_TIME=2000 \
  -e ZOOKEEPER_CLIENT_PORT=32181 \
  -v "/var/docker_volumes/message_brokers/kafka/zookeeper/data:/var/lib/zookeeper/data" \
  confluentinc/cp-zookeeper:7.0.1

docker run -d \
  --name=kafka-vols \
  --net=host \
  --user=12345 \
  -e KAFKA_BROKER_ID=1 \
  -e KAFKA_ZOOKEEPER_CONNECT=localhost:32181 \
  -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:39092 \
  -e KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 \
  -v "/var/docker_volumes/message_brokers/kafka/kafka/data:/var/lib/kafka/data" \
  confluentinc/cp-kafka:7.0.1
