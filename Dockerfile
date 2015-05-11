FROM ubuntu:12.04

# make sure apt is up to date
RUN apt-get update

# install nodejs, npm and git
RUN apt-get install -y nodejs npm git git-core

COPY . /src

RUN cd /src; npm install

EXPOSE 8080

# ADD startapp.sh /tmp.
# RUN chmod +x /tmp/startapp.sh
# CMD ./tmp/startapp.sh
