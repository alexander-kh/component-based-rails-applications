ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../dummy/config/environment", __FILE__)

require "rspec/rails"
require "shoulda/matchers"
require "database_cleaner"
require "ostruct"

Dir[Games::Engine.root.join("spec/support/**/*.rb")].
  each { |f| require f }

require "teams_store/test_helpers"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  
  config.infer_spec_type_from_file_location!
  config.disable_monkey_patching!
  config.warnings = false
  config.profile_examples = nil
  config.order = :random
  Kernel.srand config.seed
  
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end
  
  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
  
  config.include Games::ObjectCreationMethods
  config.include TeamsStore::ObjectCreationMethods
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end