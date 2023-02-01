# Capybara https://github.com/teamcapybara/capybara
RSpec.configure do |config|
  config.before do |spec|
    next unless spec.metadata[:type] == :system

    if spec.metadata[:js]
      driven_by :selenium_chrome_headless, screen_size: [1920, 1080]
    else
      driven_by :rack_test
    end
  end
end
