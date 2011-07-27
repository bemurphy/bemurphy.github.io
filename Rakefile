desc "deploy site to heroku"
task :deploy do
  Rake::Task['refresh'].execute  
  `git add _site _posts`
  `git commit -a -m'Auto-deploy from rake.'`
  `git push heroku master`
end

desc "Refresh the site from heroku and rebuild"
task :refresh do
  `rm -rf _site`
  `git pull heroku master`
  `jekyll --no-auto`
end
