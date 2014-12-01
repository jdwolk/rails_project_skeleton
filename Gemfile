source 'https://rubygems.org'
ruby `cat .ruby-version`.strip

gem 'rails', '4.1.8'
gem 'pg', '~> 0.17.1'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'envied', '~> 0.8.1'
gem 'puma', '~> 2.10.2'
# gem 'simple_form', '~> 3.1.0'
gem 'airbrake', '~> 4.1.0'

group :development do
  gem 'spring', '~> 1.2.0'
  gem 'stairs', '~> 0.8.0'
  gem 'better_errors', '~> 2.0.0'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'bullet', '~> 4.14.0'
end

group :development, :test do
  gem 'pry-rails', '~> 0.3.2'
  gem 'pry-byebug', '~> 2.0.0'
  gem 'rubocop', '~> 0.27.1', require: false
  gem 'coffeelint', '~> 0.4.0'
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'guard', '~> 2.10.1'
  gem 'guard-rspec', '~> 4.3.1', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 2.7.0'
  gem 'turnip', '~> 1.2.4'
  gem 'poltergeist', '~> 1.5.1'
  gem 'launchy', '~> 2.4.3'
  gem 'database_cleaner', '~> 1.3.0'
end

group :staging, :production do
  gem 'rails_12factor', '~> 0.0.3'
end
