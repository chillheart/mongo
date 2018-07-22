[![license_badge](https://img.shields.io/github/license/chillheart/mongo.svg)](https://github.com/chillheart/mongo/blob/master/LICENSE)
[![docker_build_badge](https://img.shields.io/docker/automated/chillheart/mongo.svg)](https://hub.docker.com/r/chillheart/mongo/)

This repository contains Dockerfile for [MongoDB 4.0](https://www.mongodb.org)
container, based on the [Alpine](https://hub.docker.com/_/alpine/) image.

## Install

As a prerequisite, you need [Docker](https://docker.com) to be installed.

To download this image from the public docker hub:

    $ docker pull chillheart/mongo

To re-build this image from the dockerfile:

    $ docker build -t chillheart/mongo .

## Usage

To run `mongod`:

    $ docker run -d --name mongo -p 27017:27017 chillheart/mongo

You can also specify the database repository where to store the data
with the volume -v option:

    $ docker run -d --name mongo -p 27017:27017 \
      -v ~/data/mongo:/data/db \
      chillheart/mongo
