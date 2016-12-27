# GitLab in Docker w/ Compose

This isn't execptionally exciting in the grand scheme of things, but instead of relying on a customized BASH script to wrap around the `docker run` command I've been using in production, I thought it would be nice to use [`docker-compose`](https://docs.docker.com/compose/) to achieve the same thing.

### Update:

Making this even less exciting is the fact that [GitLab has documentation on using docker-compose](https://docs.gitlab.com/omnibus/docker/#install-gitlab-using-docker-compose) to install and maintain a GitLab instance. When I first wrote a previous implementation in a BASH script wrapper, I didn't know the docker-compose suggestions existed and suspect they were added to the docs during that time period. In any case, it makes for an excellent use case and good exercise in learning how to write a docker-compose config.

¯\\_(ツ)_/¯

**What is unique** between the current version of my `docker-compose.yml` file and that provided by GitLab is that mine makes use of the `version '2.1'` spec for a docker compose file. [Read the compose-file versioning section](https://docs.docker.com/compose/compose-file/#/versioning) of [the docker-compose file docs](https://docs.docker.com/compose) for more information.

I have also updated my config to put all directories within the current working directory and `.gitignore` is set to ignore them, except for the `config/gitlab.rb` config file. This is where any unique information for your instance will be, so while I'm not shipping one, if you clone/fork this repository, it should track your saved work.

## Installation

- [install `docker`](https://www.docker.com/)
- [install `docker-compose`](https://docs.docker.com/compose/install/)
- clone this repo, `git clone https://github.com/edm00se/composing-gitlab-docker.git`
- `cd composing-gitlab-docker`

## Usage

Run with `docker-compose up`, optionally with `-d` on the end, to run "detached" from the active terminal session.

"Out of the box", this will instantiate on port `8080` of `localhost` and will be given an image name of "gl-stewart"; please consult the [`docker-compose.yml`](/docker-compose.yml) for more information.

[localhost:8080](http://localhost:8080/)

## Contributing

Feel free to contribute, provided you try to keep things as succinct and genericized as possible; this is a starter repository, meant to be generally unopinionated.

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request 😀

## Credits

- [Docker](https://www.docker.com/)

## License

MIT
