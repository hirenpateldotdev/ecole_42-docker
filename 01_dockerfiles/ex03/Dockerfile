#https://www.youtube.com/watch?v=sLnbWGN77Uc
FROM ubuntu:16.04
MAINTAINER hirenpat@student.42.us.org
RUN apt-get update && apt-get upgrade -y && apt-get install -y ca-certificates && apt-get install -y openssh-server && apt-get install -y wget && apt-get install -y postfix && apt-get install -y tzdata
RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && chmod 777 script.deb.sh && ./script.deb.sh
RUN apt-get install -y gitlab-ce
EXPOSE 443 80 22
ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null
# docker build -t ex03 .
# docker run -it --rm -p 80:80 -p 22:22 -p 443:443 --privileged ex03