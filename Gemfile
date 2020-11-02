source 'https://rubygems.org'

#################################################
# Core
#################################################

gem 'rails', '>= 5.0.0.rc1', '< 5.1'  # Rails 5
gem 'pg'                              # Use PostgreSQL as the database for ActiveRecord
gem 'puma', '~> 3.12'                 # Use Puma as the app server

#################################################
# Assets
#################################################

gem 'sass-rails', '~> 5.0'            # Use SCSS for stylesheets
gem 'bourbon'
gem 'uglifier', '>= 1.3.0'            # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0'        # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails'                    # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5.x'            # Makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks

#################################################
# Miscellaneous
#################################################

gem 'redis', '~> 3.0'                 # Use Redis adapter to run Action Cable in production
gem 'validate_url'                    # Adds the validation of URLs to ActiveRecord and ActiveModel

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#################################################
# Environment-specific
#################################################

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
