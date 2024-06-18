#!/bin/bash
docker network create --subnet=10.10.0.0/16 ansible_net
docker run -d --network=ansible_net --ip=10.10.1.0 ashishizofficial/ansible-slave
docker run -d --network=ansible_net --ip=10.10.2.0 ashishizofficial/ansible-slave
docker run -itd --network=ansible_net --ip=10.10.3.0 ashishizofficial/ansible-master
