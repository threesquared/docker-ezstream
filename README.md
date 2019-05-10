# Ezstream

![Docker Build Status](https://img.shields.io/docker/cloud/build/threesquared/ezstream.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/threesquared/ezstream.svg)
[![](https://images.microbadger.com/badges/image/threesquared/ezstream.svg)](https://microbadger.com/images/threesquared/ezstream)

> Docker container to run [Ezstream](http://icecast.org/ezstream/)

### Usage

```json
docker create \
--name=ezstream \
-v </path/to/config>:/ezstream \
-v </path/to/music>:/music \
threesquared/ezstream
```

Or with a `docker-compose.yml` file:

```json
version: '2.1'
services:
  ezstream:
    image: threesquared/ezstream:latest
    container_name: ezstream
    volumes:
      - "/path/to/config:/ezstream"
      - "/path/to/music:/music"
```
