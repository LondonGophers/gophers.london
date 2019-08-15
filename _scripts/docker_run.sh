#!/usr/bin/env bash

set -x

export HOME=$(mktemp -d)
export GO111MODULE=on
export GOPROXY=https://proxy.golang.org

go env
go mod tidy
rm -rf docs
go run -tags extended github.com/gohugoio/hugo
