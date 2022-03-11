# WHAT IS IT?

A tiny single binary HTTP file server designed for serving media files for easy access in other projects implemented in Docker. Using the compose configuration below files in the playlists, xmltv, and extras folders will be served at port 22000.

Ex: http://ipaddress:22000/playlists

Please note that this is simply a Docker implementation of the server project created by sgreben. The server project itself can be found at the link below.

# COMPOSE

```yaml
version: '2'
services:
  fileserver:
    container_name: fileserver
    image: ghcr.io/colino17/file-server-docker:latest
    restart: always
    volumes:
      - /path/to/playlists:/playlists
      - /path/to/xmltv:/xmltv
      - /path/to/extras:/extras
    ports:
      - 22000:8080
```

# CREDITS AND SOURCES

- https://github.com/sgreben/http-file-server
