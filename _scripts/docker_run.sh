#!/usr/bin/env bash

# Script designed to be run from within a Docker container.
# You probably want run_docker_run.sh

set -ex

export HOME=$(mktemp -d)
export GO111MODULE=on
export GOPROXY=https://proxy.golang.org

go env
go mod tidy
rm -rf docs
go run -tags extended github.com/gohugoio/hugo
