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


