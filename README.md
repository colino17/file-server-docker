# WHAT IS IT?

A tiny single binary HTTP file server designed for serving media files for easy access in other projects.

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
