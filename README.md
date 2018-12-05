### Editing and publishing gophers.london

For now, we are using https://jekyllrb.com as a site generator, largely because it has some good, clean default themes,
and we don't have much to say via the website, other than to sign-post to our other web presences. But certainly not
wedded to this approach!

This repo comprises two branches:

* `source` - surprise, surprise, the source of the website can be found
* `master` - the published version of the site

Making changes/running locally:

* Clone this repo
* Install Ruby (`v2.4.x` or later)
* Install bundler: `gem instal bundler`
* Run `bundle install` from the root of this repo
* Run `bundle exec jekyll serve` to serve locally
* Once you are happy with any local changes, `JEKYLL_ENV=production rake publish`
