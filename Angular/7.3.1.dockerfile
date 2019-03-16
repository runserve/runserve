FROM node:lts

ENV GITEMAIL=email@example.com
ENV GITUSER=SomeUser
ENV PORT=4200

RUN apt update && apt upgrade -y
RUN apt install bash git nano mc -y

WORKDIR /app

VOLUME ["/app"]

RUN npm install -g @angular/cli@7.3.1
RUN npm install -g typescript@3.2.4
RUN npm install -g yarn
RUN npm install -g prettier
RUN npm install -g gulp


EXPOSE 4200

ADD containerStart.sh /usr/local/bin/containerStart
RUN chmod +x /usr/local/bin/containerStart
RUN chmod -R 777 /app
