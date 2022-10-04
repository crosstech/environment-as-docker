# Registry/Nexus

Sonatype/Nexus - Package registry on docker.

## Interfaces

- Web UI is awailable on [http://localhost:8081/](http://localhost:8081/)

## Persistance

We used Docker volume for persist Nexus data. For this example we used "/var/docker_volumes/registries/nexus/nexus-data" directory for storing data on local machine.

So Create a directory on local machine:
```sh
sudo mkdir -p /var/docker_volumes/registries/nexus/nexus-data
sudo chmod 777 /var/docker_volumes/registries/nexus/nexus-data
```

## Steps to Run

1. Run start script.
2. Get the admin password by:
```sh
cat /var/docker_volumes/registries/nexus/nexus-data/admin.password
```
3. Open "http://localhost:8081" on browser.
4. Login with username admin and password that we read at Step 2.
5. Go to "http://localhost:8081/#admin/repository/repositories" page.
6. Create a repository. For example:

- Name		: myapp
- HttpPort	: 8082
- Allow pull: true
- Allow V1	: true

Note: 8082 already added start script for exposing purposes. If you use different port; don't forget add this port to start script and follow instruction in this document by replacing 8082 with your port.

7. Open "http://localhost:8081/#admin/security/realms" on settings menu.
8. Add "Docker Bearer Token" to right box.
9. Add Docker registry to your Docker dameon.json file as Insecure Registry.
```sh
sudo vim /etc/docker/daemon.json
```

```sh
{
	"insecure-registries":["localhost:8082"]
}
```

10. Create a remote user for push-pull purposes.
11. Login docker on your terminal as remote user.
```sh
docker login -u remote localhost:8082
```

12. Tag your docker image
```sh
docker tag hello-world localhost:8082/myapp/hello-world
```

13. Push or Pull your images.
```sh
docker push localhost:8082/myapp/hello-world
```