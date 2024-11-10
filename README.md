[![CI](https://github.com/ryanwi/rails8-on-docker/actions/workflows/ci.yml/badge.svg)](https://github.com/ryanwi/rails8-on-docker/actions/workflows/ci.yml)
[![Docker](https://github.com/ryanwi/rails8-on-docker/actions/workflows/docker.yml/badge.svg)](https://github.com/ryanwi/rails8-on-docker/actions/workflows/docker.yml)

Start here: https://github.com/ryanwi/rails8-on-docker/generate

# Rails 8 on Docker demo application

**NOTE:** There are also examples Rails 6 and Rails 7 applications working in Docker
Rails 6: https://github.com/ryanwi/rails-on-docker
Rails 7: https://github.com/ryanwi/rails7-on-docker

## Requirements

Please ensure you are using Docker Compose V2. This project relies on the `docker compose` command, not the previous `docker-compose` standalone program.

https://docs.docker.com/compose/#compose-v2-and-the-new-docker-compose-command

Check your docker compose version with:
```
% docker compose version
Docker Compose version v2.10.2
```

## Initial setup
```
docker compose build
docker compose run --rm web bin/rails db:setup
```
