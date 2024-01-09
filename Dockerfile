FROM alpine:latest
LABEL MAINTAINER="https://github.com/Th3-C0der/Th3-Phisher"
WORKDIR /Th3-Phisher/
ADD . /Th3-Phisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./Th3-Phisher.sh"