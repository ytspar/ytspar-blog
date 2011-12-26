set :build_dir, "build"

require "susy"

require "lib/custom_helpers"
helpers CustomHelpers

activate :blog
  set :blog_permalink, "articles/:year/:month/:day/:title.html"
# set :blog_summary_separator, /READMORE/
# set :blog_summary_length, 500
set :blog_layout_engine, "haml"

# set :blog_index_template, "_article_template.haml"
# set :blog_article_template, "_index_template.haml"

page "/feed.xml", :layout => false

set :disqus, "yurytsukerman"
# set :disqus_production, true

set :ga, "UA-27912380-1"

# Build-specific configuration
configure :build do
  
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
  
  # Enable cache buster
  activate :cache_buster
  
  # enable :disqus_production
  
end