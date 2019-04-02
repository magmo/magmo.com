# Use kramdown for md rendering
set :markdown_engine, :kramdown

# Set time zone
set :time_zone, 'America/Los_Angeles'

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

###
## Asset settings
###

# Sprockets asset compilation
activate :sprockets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Autoprefixer extension
activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

# live reloading
activate :livereload

###
## Blog settings
###

activate :blog do |blog|
  blog.prefix = 'blog'
  blog.sources = '{year}-{month}-{day}-{title}.html'
  blog.permalink = '{year}/{month}/{day}/{title}.html'
  blog.taglink = 'tags/{tag}.html'
  blog.layout = 'article'
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 250
  blog.year_link = '{year}.html'
  blog.month_link = '{year}/{month}.html'
  blog.day_link = '{year}/{month}/{day}.html'
  blog.default_extension = 'md'

  blog.tag_template = '/blog/tag.html'
  blog.calendar_template = '/blog/calendar.html'

  blog.paginate = true
  blog.per_page = 5
  blog.page_link = 'p{num}'
end

# Setup blog feed
page '/blog/feed.xml'

activate :deploy do |deploy|
  deploy.deploy_method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
  deploy.build_before = true # default: false
end

###
## Google Analytics settings
###
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-121043420-1' # Replace with your property ID.

  # Removing the last octet of the IP address (default = false)
  # ga.anonymize_ip = false

  # Tracking across a domain and its subdomains (default = nil)
  # ga.domain_name = 'example.com'

  # Tracking across multiple domains and subdomains (default = false)
  # ga.allow_linker = false

  # Enhanced Link Attribution (default = false)
  # ga.enhanced_link_attribution = false

  # Log detail messages to the console (default = false)
  # ga.debug = false

  # Trace debugging will output more verbose information to the console (default = false)
  # ga.debug_trace = false

  # Disable extension (default = false)
  # ga.disable = false

  # Testing your implementation without sending hits (default = true) in development
  ga.test = false

  # Compress the JavaScript code (default = false)
  # ga.minify = false

  # Output style - :html includes <script> tag (default = :html)
  # ga.output = :js
end

###
## Syntax highlighting for code samples
###
activate :syntax

# use /anout insead of /about.html
activate :directory_indexes


# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end
