source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "active_storage_validations"
gem "acts_as_list"
gem "bootsnap", require: false
gem "cssbundling-rails"
gem "devise"
gem "devise-i18n"
gem "friendly_id"
gem "image_processing"
gem "importmap-rails"
gem "omniauth-google-oauth2"
gem "omniauth-rails_csrf_protection"
gem "pg"
gem "propshaft"
gem "puma", ">= 5.0"
gem "rails", "~> 7.0.0"
gem "rails_admin"
gem "rails_admin-i18n"
gem "rails-i18n"
gem "stimulus-rails"
gem "turbo-rails"

group :development do
  gem "annotate"
  gem "rails-erd"
  gem "web-console"
end

group :development, :test do
  gem "debug"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"

  # RuboCop
  gem "rubocop-capybara", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rubycw", require: false
  gem "standard", "~> 1.30", require: false
end

group :test do
  gem "capybara"
  gem "shoulda-matchers"
  gem "webdrivers"
  gem "webmock"
end
