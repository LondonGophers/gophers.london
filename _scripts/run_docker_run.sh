#!/usr/bin/env bash

set -e

docker run --rm -v $PWD:/gophers.london -w /gophers.london --user $(id -u):$(id -g) golang:1.12.8 ./_scripts/docker_run.sh
