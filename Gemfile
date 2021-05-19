source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.0'

gem 'rails', '~> 5.2.3'
# gem 'sqlite3'
gem 'pg', '~> 1.1', '>= 1.1.4'
gem 'puma', '~> 4.3'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'faker', '~> 2.2', '>= 2.2.2'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.2'
  gem 'simplecov', '~> 0.17.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate', '~> 2.7', '>= 2.7.5'
  gem 'byebug', '~> 11.0', '>= 11.0.1'
end
