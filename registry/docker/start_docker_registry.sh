docker run -d \
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v /var/docker_volumes/registry/docker:/var/lib/registry:rw \
  -e REGISTRY_HTTP_HOST=https://registry.dev.crosstech.com.tr \
  registry:2
