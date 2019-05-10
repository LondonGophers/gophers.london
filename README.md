### Editing and publishing gophers.london

We use [Hugo](https://gohugo.io) for building https://gophers.london.

The source and published site are both found in the `master` branch. The published site is served from the
[`docs`](docs) directory.

Making changes/running locally:

* Clone this repo
* Run `go run -tags extended github.com/gohugoio/hugo serve -D` to serve locally (this will live reload)
* Once you are happy with any local changes, `go run -tags extended github.com/gohugoio/hugo`
* Create a PR, and check that [CI](https://travis-ci.org/go-london-user-group/gophers.london) passes
* Merging the PR to `master` will cause https://gophers.london to be rebuilt
