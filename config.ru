# Rack config

require "rack"
# require "rack/contrib/try_static"

require "middleman"
require "middleman/builder"

Middleman::Builder.start

# use Rack::TryStatic,
#     :root => "tmp",
#     :urls => %w[/],
#     :try => ['.html', 'index.html', '/index.html']
    
use Rack::Static, 
  #:urls => ["/stylesheets", "/images", "/javascripts"],
  :urls => [""],
  :root => "public"    

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

#run lambda { [404, {'Content-Type' => 'text/html'}, ['whoops! Not Found']] }

# Look for index files in folders like Apache
# require "rack/contrib/try_static"
# use Rack::TryStatic, :root => "build", :urls => %w[/], :try => ['.html', 'index.html', '/index.html']

# Cache static assets
# require "rack/contrib/static_cache"
# use Rack::StaticCache, :urls => ['/'], :root => 'build'