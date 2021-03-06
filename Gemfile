# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.1'

gem 'bcrypt', '~> 3.1'
gem 'bootsnap', '~> 1.12', require: false
gem 'jbuilder', '~> 2.11'
gem 'pg', '~> 1.4'
gem 'puma', '~> 5.6'
gem 'rails', '~> 7.0'
gem 'sprockets-rails', '~> 3.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'brakeman', '~> 5.2'
  gem 'code-scanning-rubocop', '~> 0.6'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'parallel_tests', '~> 3.11'
  gem 'rspec-rails', '~> 5.1'
  gem 'rubocop', '~> 1.31'
  gem 'rubocop-faker', '~>1.1'
  gem 'rubocop-performance', '~> 1.14'
  gem 'rubocop-rails', '~> 2.15'
  gem 'rubocop-rspec', '~> 2.11'
end

group :development do
  gem 'web-console', '~> 4.2'
end

group :test do
  gem 'database_cleaner-active_record', '~> 2.0'
  gem 'faker', '~> 2.21'
  gem 'shoulda-matchers', '~> 5.1'
  gem 'simplecov', '~> 0.21'
  gem 'simplecov-lcov', '~> 0.8'
end
