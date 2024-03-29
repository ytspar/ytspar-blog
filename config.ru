# Rack config

require "rack"
require "rack/contrib/try_static"

require "middleman"
require "middleman/builder"

Middleman::Builder.start

use Rack::TryStatic,
  :root => "build",
  :urls => %w[/],
  :try => ['.html', 'index.html', '/index.html']
    
# use Rack::Static, 
#  :urls => ["/stylesheets", "/images", "/javascripts", "/archives", "/articles", "/feed.xml", "/robots.txt", "/humans.txt"],
#  :root => "build"    

run lambda {
  [
    404,
    {
      'Content-Type' => 'text/html'
    },
    ['whoops! Not Found']
  ]
}


# Look for index files in folders like Apache
# require "rack/contrib/try_static"
# use Rack::TryStatic, :root => "build", :urls => %w[/], :try => ['.html', 'index.html', '/index.html']

# Cache static assets
# require "rack/contrib/static_cache"
# use Rack::StaticCache, :urls => ['/'], :root => 'build'