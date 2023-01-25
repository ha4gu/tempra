source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "bootsnap", require: false
gem "importmap-rails"
gem "pg", "~> 1.1"
gem "propshaft"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"

group :development do
  gem "web-console"
end
group :development, :test do
  gem "debug"

  # RuboCop
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "standard", "~> 1.22", require: false
end
