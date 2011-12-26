bundle update
middleman build
git add 'Gemfile'
git add 'Gemfile.lock'
git add 'build/*'
git commit -m "Build update"
git push origin master
git push heroku master