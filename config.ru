require "rubygems"
require "yaml"
require "rack/jekyll"

require 'rack/rewrite'
use Rack::Rewrite do
  r301 '/past', '/archive.html'
  r301 %r{/past/tags/.+'}, '/archive.html'
  r301 '/feed', '/atom.xml'
  r301 '/wp/feed', '/atom.xml'
  r301 %r{/past/(\d+)/(\d+)/(\d+)/([^/]+)/?}, lambda { |match, rack_env|
    month = match[2].rjust(2, '0')
    day = match[3].rjust(2, '0')
    "/#{match[1]}/#{month}/#{day}/#{match[4].gsub(/_/, '-')}.html"
  }
end
run Rack::Jekyll.new
