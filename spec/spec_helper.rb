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
  Heremaps::API_KEY = ENV["HEREMAPS_API_KEY"] || "OOXqmn-P4rmnAfMP61pBSUIxD5PEVmZB_pSq2YLgs5w".freeze
  Heremaps::DOMAIN = ENV["HEREMAPS_API_KEY"] || "ls.hereapi.com".freeze
end
