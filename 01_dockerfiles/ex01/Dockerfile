#https://hub.docker.com/r/aheil/teamspeak3-server/
FROM debian
MAINTAINER hirenpat@student.42.us.org
RUN useradd ts
WORKDIR /home/ts
RUN apt-get update && apt-get upgrade -y && apt-get install bzip2 -y && apt-get install wget -y && \
    wget http://dl.4players.de/ts/releases/3.0.12.4/teamspeak3-server_linux_amd64-3.0.12.4.tar.bz2 && \
    tar -xvf teamspeak3-server_linux_amd64-3.0.12.4.tar.bz2
WORKDIR /home/ts/teamspeak3-server_linux_amd64
ENTRYPOINT sh ts3server_minimal_runscript.sh
# docker build -t ex01 .
# docker run -it --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01