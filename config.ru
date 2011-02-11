require "rubygems"
require 'bundler/setup'
require "yaml"
require "rack/jekyll"
require "rack/cache"

ENV['APP_ROOT'] ||= File.dirname(__FILE__)

require 'rack/rewrite'
use Rack::Rewrite do
  r301 '/past', '/archive.html'
  r301 %r{/past/tags/\w+}, '/archive.html'
  r301 '/feed', '/atom.xml'
  r301 '/wp/feed', '/atom.xml'
  r301 %r{/past/(\d+)/(\d+)/(\d+)/([^/]+)/?}, lambda { |match, rack_env|
    month = match[2].rjust(2, '0')
    day = match[3].rjust(2, '0')
    "/#{match[1]}/#{month}/#{day}/#{match[4].gsub(/_/, '-')}.html"
  }
end

use Rack::Cache,
  :verbose     => false,
  # Killing private_headers isn't safe in a big dynamic app,
  # but does the trick for our two page app, esp since there's
  # no user sessions
  :private_headers => [],
  :default_ttl => 3600 # 1 hour

# run Rack::Jekyll.new

require "masquerade"
run Sinatra::Application
