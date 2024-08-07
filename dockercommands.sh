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
 
 
