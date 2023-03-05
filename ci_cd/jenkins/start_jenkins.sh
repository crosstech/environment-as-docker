docker run -d \
    --name jenkins \
	--restart=always \
    -p 8080:8080 \
    -p 50000:50000 \
    -v /var/docker_volumes/ci_cd/jenkins/home:/var/jenkins_home \
    jenkins/jenkins:lts