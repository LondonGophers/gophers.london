## Editing and publishing gophers.london

We use [Hugo](https://gohugo.io) for building https://gophers.london.

- The source of the web site can be found in the `master` branch.
- The published site is served from the `gh-pages` branch.

## Running locally

* Clone this repo
* Run `git submodule init` and then `git submodule update` in the root directory to install the blowfish Hugo theme (required to view the webpage locally)
* Install [hugo](https://gohugo.io/installation/) 
* Run `hugo server -t blowfish` to serve locally (this will live reload)
* Once you are happy with any local changes, `hugo --cleanDestinationDir`.
* Create a PR, and check that [CI](https://travis-ci.org/LondonGophers/gophers.london) passes
* Merging the PR to `master` will cause https://gophers.london to be rebuilt

## Things to note

### Image Zoom is disabled across the site. 
In [params.toml](config/_default/params.toml) disableImageZoom has been set to true. This means when inserting
an image onto a page you can no longer zoom into it. This was added as on the sponsors page the images are a link 
to the webpage. There may be a way to toggle in only for that page, but time of writing this is unknown. 

### A Warning that may need a fix.
The below warning is shown run running `hugo server -t blowfish`, the site still builds and works locally.
```
2022/12/21 17:50:18 Module "blowfish" is not compatible with this Hugo version; run "hugo mod graph" for more information.
```
Running `hugo mod graph` as advised only prints the following:
```
WARN 2022/12/21 17:52:19 Module "blowfish" is not compatible with this Hugo version; run "hugo mod graph" for more information.
project blowfish
```
So yes, for now your guess is as good as mine. 

**This has been addressed by this issue https://github.com/LondonGophers/gophers.london/issues/44**

The fix is to use `git submodule update --remote --merge`
