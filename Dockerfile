FROM gliderlabs/alpine:3.1

# make sure apt is up to date
RUN apt-get update

# install nodejs, npm and git
RUN apt-get install -y nodejs npm git git-core

ADD shart.sh /tmp.
RUN chmod +x /tmp/start.sh
CMD ./tmp/startapp.sh
