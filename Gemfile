source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'strong_parameters'
gem 'bootstrap-sass', '2.0.4'
gem 'bcrypt-ruby', '3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "pg", :group => :production


group :development do
  gem 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
# gem 'omniauth'
# gem 'omniauth-facebook'


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl', '1.0.3'
end

gem 'annotate', '2.5.0', group: :development

group :development, :test do
  # Don't require rspec-rails, since we don't want to use the built in tasks.
  gem 'rspec-rails', "~> 2.11.0"
  gem 'guard-rspec', "0.5.5"
  # gem 'capybara',    "~> 1.1"
  gem 'fabrication', "~> 1.2",   :require => false
  # should use guard for automated tests

  # 0.7.2 is missing 1f3a68f, unclear why
  gem 'database_cleaner', :git => 'https://github.com/bmabey/database_cleaner.git'

  # Avoiding 2.22 due to:
  # http://code.google.com/p/selenium/issues/detail?id=4020
  gem 'selenium-webdriver', '2.21.2'

  platforms :ruby do
    gem 'simplecov'
    gem 'fdoc'
  end
end
