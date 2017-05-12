FROM jenkins
MAINTAINER uptech.team
USER root
RUN 	apt-get update && \
		#Sudo
		apt-get install -y sudo && \
		#Docker
		apt-get install -y docker.io &&\
		#Git
		apt-get install -y git && \
		#Wget
		apt-get install -y wget
