desc "deploy site to heroku"
task :deploy do
  Rake::Task['refresh'].execute  
  `git commit -a -m'Auto-deploy from rake.'`
  `git push heroku master`
end

task :refresh do
  `rm -rf _site`
  `git pull heroku master`
  `jekyll --no-auto`
end