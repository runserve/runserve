FROM node:lts

ENV GITEMAIL=email@example.com
ENV GITUSER=SomeUser

RUN apt update && apt upgrade -y
RUN apt install bash git nano mc -y

WORKDIR /app

VOLUME ["/app"]

RUN npm install -g typescript@3.2.4
RUN npm install -g yarn
RUN npm install -g prettier


ADD containerStart.sh /usr/local/bin/containerStart
RUN chmod +x /usr/local/bin/containerStart
RUN chmod -R 777 /app
