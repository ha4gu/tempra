source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

gem "dotenv-rails", require: "dotenv/rails-now"

gem "bootsnap", ">= 1.4.4", require: false
gem "image_processing"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.3", ">= 6.1.3.2"
gem "rails-i18n", "~> 6.0.0"
gem "rails_admin"
gem "rails_admin-i18n"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "webpacker", "~> 5.0"

group :development do
  gem "annotate"
  gem "bullet"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "rails-erd"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]

  gem "erb_lint", require: false
  gem "pry-byebug"
  gem "pry-rails"
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "standard", require: false
end
