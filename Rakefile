require "rubygems"
require "tmpdir"

require "bundler/setup"
require "jekyll"

# Change your GitHub reponame
GITHUB_REPONAME = "go-london-user-group/gophers.london"

def generate()
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end

desc "Generate blog files"
task :generate do
  generate
end

desc "Generate and publish blog to gh-pages"
task :publish do
  ENV["JEKYLL_ENV"] = "production"

  generate
  Dir.mktmpdir do |tmp|
    pwd = Dir.pwd
    Dir.chdir tmp
    system "git clone https://github.com/#{GITHUB_REPONAME} ."
    system "git checkout master"
    cp_r Dir.glob(File.join(pwd, "_site/")+"*"), tmp
    system "ls"
    system "git add -A ."
    system "git config hooks.stopbinaries false"
    message = "Site updated at #{Time.now.utc}"
    system "git commit -m #{message.inspect}"
    system "git push origin master"
    Dir.chdir pwd
  end
end
