# prantlf/node-git

[Docker] image: Node.js LTS on Alpine Linux with Git

[![nodesource/node](http://dockeri.co/image/prantlf/node-git)](https://hub.docker.com/repository/docker/prantlf/node-git/)

[This image] is supposed to build and test [Node.js packages (NPM modules)], which include dependencies pulled by [git]. It is built automatically on the top of the tag `lts-alpine` from the [node repository], so that it always runs the current [LTS version] of [Node.js] in the latest [Alpine Linux]. [Git] has to be updated from time to time by triggering a new build manually.

## Tags

- [`lts-alpine`]

## Install

```
docker pull prantlf/node-git
# or
docker pull prantlf/node-git:lts-alpine
```

## Use

See [how to use the base node image] for more information.

## Build, Test and Publish

The local image is built as `node-git` and pushed to the docker hub as `prantlf/node-git:lts-alpine`.

Remove an old local image:

    make clean

Check the `Dockerfile`:

    make lint

Build a new local image:

    make build

Enter an interactive shell inside the created image:

    make run

Tag the local image for pushing:

    make tag

Login to the docker hub:

    make login

Push the local image to the docker hub:

    make push

## License

Copyright (c) 2019-2020 Ferdinand Prantl

Licensed under the MIT license.

[Docker]: https://www.docker.com/
[This image]: https://hub.docker.com/repository/docker/prantlf/node-git
[`lts-alpine`]: https://hub.docker.com/repository/docker/prantlf/node-git/tags
[Node.js packages (NPM modules)]: https://docs.npmjs.com/about-packages-and-modules
[git]: https://git-scm.com/
[node repository]: https://hub.docker.com/_/node
[LTS version]: https://nodejs.org/en/about/releases/
[Node.js]: https://nodejs.org/
[Alpine Linux]: https://alpinelinux.org/
[how to use the base node image]: https://github.com/nodejs/docker-node/blob/master/README.md#how-to-use-this-image
