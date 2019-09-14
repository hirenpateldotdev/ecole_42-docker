#https://www.youtube.com/watch?v=JtKIpGjtLzw
#https://hub.docker.com/r/itzg/minecraft-server
#create a minecraft-server using docker image provided by itzg
docker run -d -p 25565:25565 --name mc itzg/minecraft-server