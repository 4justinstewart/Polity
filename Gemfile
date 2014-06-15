
source "http://rubygems.org"

# gemspec

# # used by the dummy application
# gem 'rails', '3.1.0'
# gem 'json'
# gem 'coffee-rails', "~> 3.1.0"
# gem 'haml-rails'

# # used by test rails apps
# gem 'sqlite3'
# gem 'sass-rails', "~> 3.1.0"
# gem 'uglifier'
# gem 'jquery-rails'
# gem 'turn', :require => false, :group => :test

# group :development, :test do
#   gem "rspec-rails"

#   gem "aruba"
# end



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks

gem 'backbone-on-rails', '~> 1.1.0.0'
gem 'lodash-rails', '~> 2.2.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem 'high_voltage'

gem 'devise'

# Testing FullNameSplitter
gem 'full-name-splitter', '~> 0.1.2'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


group :development, :test do
  gem 'rspec-rails'
  # gem 'jasmine'
  # gem 'jasminerice', :git => 'https://github.com/bradphelan/jasminerice.git'
  gem 'coveralls', require: false
  gem 'cucumber-rails', :require => false
  gem "capybara"
  gem 'faker'
end


group :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'launchy'
end

group :development do
  gem 'quiet_assets'
  gem 'activerecord-import'
  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent'
  gem "growl"
  # gem "growlnotify"
end


