# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "puma", "~> 5.0"
gem "rails", "~> 6.1.4", ">= 6.1.4.1"
gem "sass-rails", ">= 6"
gem "sqlite3", "~> 1.4"
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem "pry-byebug"
  gem "rubocop", require: false
  gem "standard", require: false
end

group :development do
  gem "listen", "~> 3.3"
end
