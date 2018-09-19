#! /bin/bash

# from https://jenkins.io/doc/book/installing/
docker run \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins-blueocean \
  jenkinsci/blueocean
