require "bundler/setup"
require "heremaps"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Heremaps test credentials
  Heremaps.app_id = "lMQVHZlRhrxap8XJCNhv"
  Heremaps.app_code = "OWK5v85adwMuK-drG8fpkQ"
end
