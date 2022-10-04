docker run -d \
  --name nexus_registry \
  -p 8081:8081 \
  -p 8082:8082 \
  --restart=always \
  -v /var/docker_volumes/registries/nexus/nexus-data:/nexus-data \
sonatype/nexus3
