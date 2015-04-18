source 'https://rubygems.org'

gem 'rails', '4.2.1'
gem 'pg'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'googl', '~> 0.7'
gem 'rails_config', '~> 0.4'
gem 'validate_url', '~> 1'

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop'
  gem 'rubocop', require: false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'annotate', github: 'ctran/annotate_models'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl', require: false
  gem 'factory_girl_rails', require: false
  gem 'faker'
  gem 'database_cleaner'
end

group :coverage do
  gem 'simplecov', require: false
  gem 'coveralls', require: false
end
