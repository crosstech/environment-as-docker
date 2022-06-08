FROM jenkins/jenkins:lts
 
USER root
RUN apt-get update \
      && apt-get install -y sudo
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -sSL https://get.docker.com/ | sh
RUN service docker enable 
RUN service docker start 
RUN  groupadd docker || true
RUN  gpasswd -a jenkins docker
USER jenkins
	