# Docker-Example

follow this step by step

1--#install docker for windows
https://hub.docker.com/editions/community/docker-ce-desktop-windows/

2>--maintain the folder stucture as shown in folder-structure.png

3> navigate to the root folder where you have DockerFile and requirement.txt file

4> execcute below command
docker build -t mytest .

 5> check if your image is created or not with name mytest
docker images

6>run your image
docker run -d -p 5000:5000 mytest

7>open web browser and hit http://localhost:5000 or 127.0.0.0:5000 or your_ip:5000

8> check status of your process

docker ps
