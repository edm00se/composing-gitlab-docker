# GitLab Multi-Runner in Docker with Compose

Create and instance of GitLab Multi-Runner with the latest from Docker Hub](https://hub.docker.com/r/gitlab/gitlab-runner/), with docker compose.

## Required

- [git](https://git-scm.com/)
- [docker](https://www.docker.com/)
- [docker compose](https://docs.docker.com/compose/install/)

## Install and Run
- `git clone https://github.com/edm00se/composing-gitlab-docker.git gitlab`
- `cd gitlab/runner/`
- run the docker-compose way
  - `docker-compose pull`
  - `docker-compose up -d`
- execute `docker exec -it gitlab-runner gitlab-runner register`
  - follow prompts and enter config information for your GitLab instance

## Perform Upgrade

- `cd gitlab/runner/`
- `docker compose down`
- `docker compose pull`
- `docker compose up -d`

## Credits

- [Docker](https://www.docker.com/)
- [GitLab](https://about.gitlab.com/)

## License

MIT
