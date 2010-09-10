desc "deploy site to heroku"
task :deploy do
  `git pull heroku master`
  `jekyll --no-auto`
  `git commit -a -m'Auto-deploy from rake.'`
  `git push heroku master`
end

task :refresh do
  `rm -rf _site`
  `git pull heroku master`
  `jekyll --no-auto`
end