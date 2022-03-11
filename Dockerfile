FROM alpine:latest

# BASICS
RUN apk update
RUN apk upgrade
RUN apk add --no-cache ca-certificates coreutils gnutls-utils

# GO BINARY
RUN wget https://github.com/sgreben/http-file-server/releases/download/1.6.1/http-file-server_1.6.1_linux_x86_64.tar.gz -O hfs.tar.gz; \
    tar xzf hfs.tar.gz; \
    mv http-file-server /usr/bin/http-file-server; \
    rm hfs.tar.gz; \
    rm -rf http-file-server/
    
# VOLUMES
VOLUME /extras
VOLUME /playlists
VOLUME /xmltv

# COMMAND
CMD ["http-file-server", "/extras /playlists /xmltv"]
