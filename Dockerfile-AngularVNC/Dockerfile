FROM dorowu/ubuntu-desktop-lxde-vnc

ENV GITEMAIL=email@example.com
ENV GITUSER=SomeUser
ENV PORT=4200

RUN apt update && apt upgrade -y
RUN apt install curl bash git nano mc gpg-agent gcc g++ make sudo -y

WORKDIR /app

VOLUME ["/app"]

RUN curl -sL https://deb.nodesource.com/setup_10.x -o /root/nodesource_setup.sh
RUN sudo sh /root/nodesource_setup.sh
RUN apt install nodejs -y
RUN npm install -g @angular/cli@7.3.3
RUN npm install -g typescript@3.2.4
RUN npm install -g yarn

RUN add-apt-repository ppa:webupd8team/atom -y
RUN apt install atom -y


RUN apt update && apt upgrade -y
EXPOSE 4200-4219

ADD containerStart.sh /usr/local/bin/containerStart
RUN chmod +x /usr/local/bin/containerStart
RUN chmod -R 777 /app
