docker run -d \
	  --name rabbitmq \
	  --hostname rabbit_host \
	  -p 5672:5672 \
	  -p 15672:15672 \
	  -v "/var/docker_volumes/message_brokers/rabbitmq/data:/var/lib/rabbitmq" \
	  -v "/var/docker_volumes/message_brokers/rabbitmq/log:/var/log/rabbitmq" \
	  rabbitmq:3.9-management
