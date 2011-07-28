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

desc 'Ping pubsubhubbub server.'
task :ping do
  require 'cgi'
  require 'net/http'
  puts 'Pinging pubsubhubbub server'
  feed_url = "http://feeds.feedburner.com/techfreaknet"
  data = 'hub.mode=publish&hub.url=' + CGI::escape(feed_url)
  http = Net::HTTP.new('pubsubhubbub.appspot.com', 80)
  resp, data = http.post('http://pubsubhubbub.appspot.com/publish',
                         data,
                         {'Content-Type' => 'application/x-www-form-urlencoded'})

  puts "Ping error: #{resp}, #{data}" unless resp.code == "204"
end

