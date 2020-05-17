# Docker DevOps Course - KodeKloud

# check linux Version
cat /etc/*release*

# install docker from get.docker.com
curl -fsSL https://test.docker.com -o test-docker.sh
sudo sh test-docker.sh

# docker version
sudo docker version

# test an image
docker pull docker/whalesay
docker run docker/whalesay cowsay boo

# docker run 
docker run Ubuntu

docker run ubuntu sleep 100
docker exec <container_name> cat /etc/hosts

# run - attach and detach 
docker run d ljaapp
docker attach <container_name>

# run a specific version (tag)
docker run redis:4.0

# interactive mode
docker run -i ljaapp 

# interactive and pseudo terminal
docker run -it ljaapp 

# Port Mapping
docker run -p 80:5000 ljaapp

# run multiple instances of the same app
docker run 8070:80 ljaapp
docker run 8080:80 ljaapp
docker run 8090:80 ljaapp

# volume mapping
docker run -v /opt/datadir:/var/lib/mysql mysql

# inspect container
docker inspect <container_name> 

# logs
docker logs <container_name> 

# environment variables
# to find env variable set on a container that is already running - in config section
docker inspect <container_name>

# image layers
docker history <container_name>

# build a Dockerfile
docker build -t webapp-color .

# check the release
docker run:python:3.6 cat /etc/*release*

### docker compose ###

# link is a command line option to link containers together




### end - docker compose ###




