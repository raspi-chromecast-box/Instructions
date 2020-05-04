#!/bin/bash

sudo apt-get install docker.io -y
sudo apt-get install docker-compose -y

echo '#!/bin/bash
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi $( sudo docker images -a -q )' | sudo tee /usr/local/bin/dockerDeleteAll

sudo chmod +x /usr/local/bin/dockerDeleteAll

echo "#!/bin/bash
sudo docker images | grep none | awk '{ print $3; }' | xargs sudo docker rmi -f
echo yes | sudo docker image prune -a
sudo docker rmi $(sudo docker images -f 'dangling=true' -q) -f
sudo docker rmi $(sudo docker images | grep '^<none' | awk '{print $3}')
sudo docker rmi $(sudo docker images | grep "none" | awk '{print $3}')" | sudo tee /usr/local/bin/dockerDeleteNoneImages

sudo chmod +x /usr/local/bin/dockerDeleteNoneImages
