#!/usr/bin/env bash

set -eu

# If we have a single-element GOPATH, map it and set an env var
mapping="-v $(go env GOCACHE):/gocache --env GOCACHE=/gocache"
gp=$(go env GOPATH)
if echo $gp | grep ':'
then
	echo "Multiple-element GOPATH set: $gp. Not mounting in Docker container"
else
	mapping="-v $gp:/gopath --env GOPATH=/gopath $mapping"
fi

docker run --rm $mapping -v $PWD:/gophers.london -w /gophers.london --user $(id -u):$(id -g) golang:1.13 ./_scripts/docker_run.sh
