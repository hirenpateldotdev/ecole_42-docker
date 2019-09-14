#https://www.youtube.com/watch?v=Kc2xiAWw3Xg
FROM node
MAINTAINER hirenpat@student.42.us.org

RUN yarn global add create-react-app
RUN create-react-app react-app
WORKDIR react-app/app
EXPOSE 3000
ENTRYPOINT npm start
# docker build React_App