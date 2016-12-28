# GitLab in Docker w/ Compose

Create and instance of GitLab CE with the latest from Docker Hub](https://hub.docker.com/r/gitlab/gitlab-ce/), with docker compose, and an upgrade BASH script for convenience.

## Required

- [git](https://git-scm.com/)
- [docker](https://www.docker.com/)
- [docker compose](https://docs.docker.com/compose/install/)

## Install and Run
- `git clone https://github.com/edm00se/composing-gitlab-docker.git gitlab`
- `cd gitlab`
- run the docker-compose way
  - `docker-compose pull`
  - `docker-compose up -d`
- run alternatively, via `upgrade.sh`
  - `./upgrade.sh`
- open [localhost:8080](http://localhost:8080/)

## Perform Upgrade

Your [GitLab's admin page](http://localhost:8080/admin) page will reflect when there is an upgrade available.

- `./upgrade.sh`

## Credits

- [Docker](https://www.docker.com/)
- [GitLab](https://about.gitlab.com/)

## License

MIT
