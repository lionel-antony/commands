# Docker CE Installation on Ubuntu 
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Give Ubuntu root access
sudo usermod -aG docker <user>
sudo usermod -aG docker ubuntu

# Install Docker Machine - github/docker/machine - releases tab
sudo curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
sudo chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

# Install Docker Compose - github/docker/compose - releases tab
sudo curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Container
# old way
docker <command> (options)
docker <command> <subcommand> (options)

docker
docker version
docker info 

# image is an instance of a container

# -d : detach - it detaches the container to run in the background, and returns you to the shell prompt
docker container run --publish 80:80 --detach nginx
docker container run --publish 80:80 --detach --name ljahost nginx

# display containers
docker container ls -a
docker ps -a

# start container
docker container start mongo

# stop containers
docker container stop 2f25d0593c70

# housekeeping
docker system prune
docker system prune --volumes

# remove containers
docker container rm <container_id>
  -f, --force     Force the removal of a running container (uses SIGKILL)
  -l, --link      Remove the specified link
  -v, --volumes   Remove anonymous volumes associated with the container

# Display the running processes of a container
docker container top CONTAINER [ps OPTIONS]

# Containers
   - are processes
   - limited to what resources they can AccessA
   - exit when the process stops 

# list linux processes
ps aux 

# Multi-Container 
docker container run --publish 80:80 --detach --name nginx nginx
docker container run --publish 8080:80 --detach --name apache httpd
docker container run --publish 3306:3306 --detach --name mysql mysql --env MYSQL_ROOT_PASSWORD=pwd

# looking inside containers

# process list in one container
docker container top 

# details of one container config 
docker container inspect 

# performance stats for all containers
docker container stats

# start new container interactively - run a terminal inside the container
docker container run -it 
docker container run -it --name nginx nginx bash
docker container run -it --name ubuntu ubuntu

docker container start -ai 
docker container start -ai ubuntu

# run additional commands in existing (running) containers
# exec useful to connect to a running container
docker container exec -it mysql 
docker container exec -it mongo bash

# networking 
docker container port <container_id>
docker container inspect nginx | grep -i net
docker container inspect nginx --format '{{.NetworkSettings.IPAddress}}'

# show network
docker network ls 

# inspect network
docker network inspect

# create a network
docker network create --driver

# attach a network to a container
docker network connect

# detach a network from a container
docker network disconnect

### create network - default is bridge ###
docker network create lio
docker network create jef

docker container run -d -p 8080:80 --network lio --name lionginx nginx
docker container run -d -p 8090:80 --network jef --name jefnginx nginx

docker container run -d -p 10:80 --network lio --name lioapache httpd
docker container run -d -p 20:80 --network jef --name jefapache httpd

docker container run -d -p 8181:8081 --network lio --name liomongo mongo
docker container run -d -p 8281:8081 --network jef --name jefmongo mongo

docker network inspect lio
docker network inspect jef

# disconnect liomysql from lio network and connect to jef network
# disconnect jefmysql from jef network and connect to lio network
docker network disconnect a1c7dac34842  e6c6c552f1e8
docker network disconnect 5893544919ab 3bef457cb101
docker network connect a1c7dac34842 3bef457cb101
docker network connect 5893544919ab e6c6c552f1e8

# connect liomysql to lio and  jefmysql to jef
docker network connect a1c7dac34842 e6c6c552f1e8
docker network connect 5893544919ab 3bef457cb101

        "Containers": {
            "3bef457cb1015c0f2286ecebc46824ff1c73e8bd03e7c699be27f1e355fc10d6": {
                "Name": "jefmongo",
                "EndpointID": "fa73ada54fa004d67e7e55a32442fc754a25a5ada4c1ca7299431edd0f41126e",
                "MacAddress": "02:42:ac:14:00:04",
                "IPv4Address": "172.20.0.4/16",
                "IPv6Address": ""
            },
            "40b09d9f93c01f7fe6366bdbd9ee9d99cde56f3a7499eacdb80189d4c04fd743": {
                "Name": "lioapache",
                "EndpointID": "b991591057d642de24ced86d9bc2c377902b1af518302370144ab828e45b09eb",
                "MacAddress": "02:42:ac:14:00:03",
                "IPv4Address": "172.20.0.3/16",
                "IPv6Address": ""
            },
            "89b0eca5ef4419316c7fe113825164d6be65f83fdcea9bd8ec33cf2d07b9eb39": {
                "Name": "lionginx",
                "EndpointID": "f6b409acf7bf1dab4f76266bcaf5ba227c373c3dbcde8bf107ab317a69c92a3d",
                "MacAddress": "02:42:ac:14:00:02",
                "IPv4Address": "172.20.0.2/16",
                "IPv6Address": ""
            },
            "e6c6c552f1e82765cd09490a75a27ac25e59af228dc40cd8e7ceee9d7697abd8": {
                "Name": "liomongo",
                "EndpointID": "9e1ca5c5ba44d233c6d0228829fec1829d13f1afaa21cfc62b3950a35c456f0a",
                "MacAddress": "02:42:ac:14:00:05",
                "IPv4Address": "172.20.0.5/16",
                "IPv6Address": ""
            }

        "Containers": {
            "3bef457cb1015c0f2286ecebc46824ff1c73e8bd03e7c699be27f1e355fc10d6": {
                "Name": "jefmongo",
                "EndpointID": "fa39fcb01f222f11a2ea5445eef8c9f913d7d64bc364fe099f84c7649af99775",
                "MacAddress": "02:42:ac:15:00:05",
                "IPv4Address": "172.21.0.5/16",
                "IPv6Address": ""
            },
            "52b51729349d138af49f17aaca8f77f40926b9202f4337fd6af2177710e79fb9": {
                "Name": "jefapache",
                "EndpointID": "de46fb4e26a71c5ab3eb7901c0e5689d0a7c25d4f9f864e266a1d5b281874dbc",
                "MacAddress": "02:42:ac:15:00:03",
                "IPv4Address": "172.21.0.3/16",
                "IPv6Address": ""
            },
            "8590938aa7bb4485ecceb42f7da902f83cda2d2d5d5db416c16ac17b41f382e8": {
                "Name": "jefnginx",
                "EndpointID": "51752e64ddb01b210b5735e450a5537e868e141720c997d71548d800beb78a7d",
                "MacAddress": "02:42:ac:15:00:02",
                "IPv4Address": "172.21.0.2/16",
                "IPv6Address": ""
            },
            "e6c6c552f1e82765cd09490a75a27ac25e59af228dc40cd8e7ceee9d7697abd8": {
                "Name": "liomongo",
                "EndpointID": "46c1c1690e97f6777ecc5ad98f208313d31d18fa9dbf00d5ed282ffc7e9223a9",
                "MacAddress": "02:42:ac:15:00:04",
                "IPv4Address": "172.21.0.4/16",
                "IPv6Address": ""
            }
        },

### create network - default is bridge ###

### Docker Networks: DNS ###
# Docker uses Container names as the equivalent of host names when talking to each other
# DNS is the key into easy inter-container communication
# DNS for names is built-in for custom networks

# ping containers on the same network
docker container exec -it lionginx ping liomongo

# Bridge network does not have the DNS Server built into it by default
# -- link options is used to create manual links between containers

### End - Docker Networks: DNS ###

### install ping ###
apt-get update
apt-get install iputils-ping
### end - install ping ###

### Using Containers for CLI Testing ###

docker container run -it --rm --name centos centos:7 bash

# inside centos
yum update curl
curl --version

docker container run -it --name ubuntu ubuntu:14.04

# inside ubuntu
apt-get update && apt-get install curl
curl --version

### End - Using Containers for CLI Testing ###

### DNS Round Robbin ###
# Round Robbin - Multiple IP addresses point to the same hostname
docker network create ljanet
docker container run -d --net ljanet --net-alias search elasticsearch:2
docker container run -d --net ljanet --net-alias search elasticsearch:2
docker container run --rm --net ljanet alpine nslookup search
docker container run --rm --net ljanet centos curl -s search:9200

### End - DNS Round Robbin ###

