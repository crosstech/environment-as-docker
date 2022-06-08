docker run -d  \
	-v /var/docker_volumes/git_server/gogs:/data \
	--name gogs-git-server \
	--net=host \
	gogs/gogs
