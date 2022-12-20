## Editing and publishing gophers.london

We use [Hugo](https://gohugo.io) for building https://gophers.london.

- The source of the web site can be found in the `master` branch.
- The published site is served from the `gh-pages` branch.

## Running locally

* Clone this repo
* Run `git submodule init` and then `git submodule update` in the root directory to install the minimal Hugo theme (required to view the webpage locally)
* Run `go run -tags extended github.com/gohugoio/hugo serve -D` to serve locally (this will live reload)
* Once you are happy with any local changes, `go run -tags extended github.com/gohugoio/hugo --cleanDestinationDir`.
Alternatively you can run `./_scripts/run_docker_run.sh`
* Create a PR, and check that [CI](https://travis-ci.org/LondonGophers/gophers.london) passes
* Merging the PR to `master` will cause https://gophers.london to be rebuilt

## Things to note

### Image Zoom is disabled across the site. 
In [params.toml](config/_default/params.toml) disableImageZoom has been set to true. This means when inserting
an image onto a page you can no longer zoom into it. This was added as on the sponsors page the images are a link 
to the webpage. There may be a way to toggle in only for that page, but time of writing this is unknown. 
