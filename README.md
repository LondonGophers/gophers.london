### Editing and publishing gophers.london

We use [Hugo](https://gohugo.io) for building https://gophers.london.

The source and published site are both found in the `master` branch. The published site is served from the
[`docs`](docs) directory.

Making changes/running locally:

* Clone this repo
* Run `git submodule init` and then `git submodule update` in the root directory to install the minimal Hugo theme (required to view the webpage locally)
* Run `go run -tags extended github.com/gohugoio/hugo serve -D` to serve locally (this will live reload)
* Once you are happy with any local changes, `go run -tags extended github.com/gohugoio/hugo --cleanDestinationDir`.
Alternatively you can run `./_scripts/run_docker_run.sh`
* Create a PR, and check that [CI](https://travis-ci.org/LondonGophers/gophers.london) passes
* Merging the PR to `master` will cause https://gophers.london to be rebuilt
