# prantlf/node-git

Docker image: Node.js LTS on Alpine Linux with Git

## Build, Test and Publish

The local image is built as `node-git` and pushed to the docker hub as `prantlf/node-git:lts-alpine`.

Remove an old local image:

    make clean

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

Copyright (c) 2019 Ferdinand Prantl

Licensed under the MIT license.
