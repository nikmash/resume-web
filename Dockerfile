FROM gliderlabs/alpine:3.1
WORKDIR /tmp/resume
ADD . .

CMD rm -rf /www/resume && cp -R /tmp/resume /www/resume