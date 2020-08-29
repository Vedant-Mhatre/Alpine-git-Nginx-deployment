sudo apt -y update
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common git
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt -y update
apt-cache policy docker-ce > dockerrepo.txt
sudo apt -y install docker-ce
sudo systemctl status docker > installstatus.txt
sudo usermod -aG docker ${USER}
