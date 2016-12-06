# GitLab in Docker w/ Compose

This isn't execptionally exciting in the grand scheme of things, but instead of relying on a customized BASH script to wrap around the `docker run` command I've been using in production, I thought it would be nice to use [`docker-compose`](https://docs.docker.com/compose/) to achieve the same thing.

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

Feel free to contribute, provided you try to keep things as 

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request 😀

## Credits

- [Docker](https://www.docker.com/)

## License

MIT
