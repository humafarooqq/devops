#installing docker
sudo apt-get update
#Install packages that allow apt to use repositories over HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
#Add Docker’s GPG key to verify the authenticity of the packages.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Add Docker’s official repository to your apt sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#Update Package List Again
sudo apt update
#install docker engine
sudo apt-get install docker.io
#start and enable docker
sudo systemctl start docker
sudo systemctl enable docker
#verify it installation
docker --version
sudo docker run hello-world
 
#list all docker images
sudo docker images
 
#list running containers
sudo docker ps
 
#list the stopped cpntainers
sudo docker p -a
 
#pull the image from a registry(by deafult dockerhub) it would still pull even if we dont us ethis command and directly run the image
sudo docker pull {name}:{tag}
 
#build the image from a dockerfile (-t or --tag = sets a name and a tag)(path= .)
sudo docker {path}
sudo docker -t {name]:{tag} {path}
 
#creates a container from a given image
sudo docker run {name}:{tag}
#-d or --detach runs container in background and prints the full conatiner ID
sudo docker run -d {name}:{tag}
#-p or --publish =publsih a conatiner port to the host
sudo docker run -d  -p {hostid}:{conatinerid} {name}:{tag}
#--name=assign a name to conatiner
sudo docker run --name {name} -d -p 80:80 nginx:1.23
#to get  the conatiner log running in background
sudo docker logs {conatiner id or name}
 
#stop a running  container
sudo docker stop {container id or name}
 
#list all the conatiners stopped and running
sudo docker ps -a
 
#start a conatiner
docker start {conatinerid or name}
 
#remove stopped container
sudo docker rm {conatinerid or name}
 
#remove all stopped conatiners
sudo docker container prune
 
#remove a docker image
sudo docker rmi {image id or name}
 
#remove the dangling image
sudo docker image prune
 
#remove all the unused images not only dangling
sudo docker image prune -a
 
#remove the unused docker objects
sudo docker system prune
has context menu
