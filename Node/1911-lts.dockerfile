FROM node:lts

ENV GITEMAIL=email@example.com
ENV GITUSER=SomeUser

RUN apt update && apt upgrade -y
RUN apt install bash git nano mc -y

WORKDIR /app

VOLUME ["/app"]

RUN npm install -g @angular/cli@latest
RUN npm install -g typescript@latest
RUN npm install -g yarn@latest
RUN npm install -g prettier@latest
RUN npm install -g gulp@latest

EXPOSE 3000
EXPOSE 4200


ADD containerStart.sh /usr/local/bin/containerStart
RUN chmod +x /usr/local/bin/containerStart
RUN chmod -R 777 /app
