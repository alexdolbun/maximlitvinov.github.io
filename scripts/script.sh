#!/bin/bash
$sudo yum -y update
$sudo yum install docker -y
$sudo systemctl start docker
$sudo chkconfig docker on
$sudo docker network create jenkins
$sudo docker volume create jenkins-docker-certs
$sudo docker volume create jenkins-data
$sudo docker container run \
 --name jenkins-docker \
 --rm \
 --detach \
 --privileged \ 
 --network jenkins \
 --network-alias docker \
 --env DOCKER_TLS_CERTDIR=/certs \
 --volume jenkins-docker-certs:/certs/client \ 
 --volume jenkins-data:/var/jenkins_home \
 --publish 2376:2376 \
docker:dind
$sudo docker container run \
 --name jenkins-docker \
  --rm \
  --detach \
 --privileged \ 
 --network jenkins \
  --network-alias docker \
 --env DOCKER_TLS_CERTDIR=/certs \
 --volume jenkins-docker-certs:/certs/client \ 
 --volume jenkins-data:/var/jenkins_home \
 --publish 2376:2376 \
docker:dind
$sudo docker logs 