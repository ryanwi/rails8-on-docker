[![CI](https://github.com/ryanwi/rails8-on-docker/actions/workflows/ci.yml/badge.svg)](https://github.com/ryanwi/rails8-on-docker/actions/workflows/ci.yml)
[![Docker](https://github.com/ryanwi/rails8-on-docker/actions/workflows/docker.yml/badge.svg)](https://github.com/ryanwi/rails8-on-docker/actions/workflows/docker.yml)

Start here: https://github.com/ryanwi/rails8-on-docker/generate

# Rails 8 on Docker demo application

**NOTE:** There are also examples Rails 6 and Rails 7 applications working in Docker

* [Rails 8 Applicaiton Docker Template](https://github.com/ryanwi/rails8-on-docker)
* [Rails 7 Applicaiton Docker Template](https://github.com/ryanwi/rails7-on-docker)
* [Rails 6 Application Docker Template](https://github.com/ryanwi/rails-on-docker)

## Features

* Rails 8
* Ruby 3.3
* Dockerfile and Docker Compose configuration
* GitHub Actions with checks for
  * tests
  * Linting with Rubocop
  * Security scans with [Brakeman](https://github.com/presidentbeef/brakeman) and [bundler-audit](https://github.com/rubysec/bundler-audit)
  * Building and testing of a production Docker image
* Dependabot for automated updates


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

## Running the Rails app
```
docker compose up
```

## Running the Rails console
When the app is already running with `docker-compose` up, attach to the container:
```
docker compose exec web bin/rails c
```

When no container running yet, start up a new one:
```
docker compose run --rm web bin/rails c
```

## Updating gems
```
docker compose run --rm web bundle update
docker compose up --build
```

## Production build

(adjust tags as needed)

### with [BuildKit](https://docs.docker.com/build/buildkit/)
```
DOCKER_BUILDKIT=1 docker build --tag rails-on-docker --load .
```

Test the image can be used and Rails starts up, use a fake key for testing purposes only:
```
docker run --rm --env SECRET_KEY_BASE=dummy rails-on-docker
```

### With legacy builder (no BuildKit)
```
docker build --tag rails-on-docker .
```

Test the image can be used and Rails starts up, use a fake key for testing purposes only:
```
docker run --rm --env SECRET_KEY_BASE=dummy rails-on-docker
```

## Deployment

TODO

## Credits/References

### Rails with Docker
* [Quickstart: Compose and Rails](https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails/)
* [Docker Rails Samples](https://docs.docker.com/samples/rails/)
* [Docker for Rails Developers
Build, Ship, and Run Your Applications Everywhere](https://pragprog.com/titles/ridocker/docker-for-rails-developers/)
* [Ruby on Whales:
Dockerizing Ruby and Rails development](https://evilmartians.com/chronicles/ruby-on-whales-docker-for-ruby-rails-development)
* [Rails generator to produce Dockerfiles and related files](https://github.com/rubys/dockerfile-rails)
* [docker init](https://docs.docker.com/engine/reference/commandline/init/)
* [Rails 8 Dockerfile Generator Template](https://github.com/rails/rails/blob/main/railties/lib/rails/generators/rails/app/templates/Dockerfile.tt)

## Author

**Ryan Williams**

- <https://www.ryanwilliams.dev>
- <https://bsky.app/profile/ryanwi.bsky.social>
- <https://hachyderm.io/@ryanwi>
- <https://github.com/ryanwi>
