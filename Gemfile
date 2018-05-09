source 'https://rubygems.org'

ruby "~> 2.4.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.9'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', :groups => [:development, :test]
gem 'pg', '~> 0.21.0', :group => :production
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'blacklight', "~> 6.0"
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]

# needed when running in production?
gem 'traject', "~> 2.3"

#group :development, :test do
  gem 'solr_wrapper', '>= 0.3'
#end

gem 'rsolr', '~> 1.0'
gem 'blacklight-marc', '~> 6.1'

# Enable logging on Heroku & specify webserver
gem 'rails_12factor', group: :production
gem 'puma'

gem 'rest-client'
gem 'nokogiri'
gem 'jwt'

gem 'summon'

gem 'rails-assets-datatables', source: 'https://rails-assets.org'