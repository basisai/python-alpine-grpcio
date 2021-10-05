# python-alpine-grpcio

Docker image with Python on Alpine with `grpcio` pre-compiled.

The image is published on Docker Hub at
[`quay.io/basisai/python-alpine-grpcio`](https://quay.io/basisai/python-alpine-grpcio).

## Release

To create and push a new image version, [create a new release/tag](https://github.com/basisai/python-alpine-grpcio/releases/new) following the tag naming convention:

The image tag will be made up of two components separate by a
`-`: `<python version>-<grpcio version>`.

A [GA workflow]https://github.com/basisai/python-alpine-grpcio/blob/master/.github/workflows/publish.yaml) will pick this up and push a new version to quay.io.
