lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "heremaps/version"

Gem::Specification.new do |spec|
  spec.name = "heremaps"
  spec.version = Heremaps::VERSION
  spec.authors = ["Dheeraj (DJ) Agrawal"]
  spec.email = ["agrawal.dheeraj.7@gmail.com"]

  spec.summary = "A Ruby gem to integrate with Heremaps API"
  spec.description = "This `ruby gem` provide the functionality to integrate with HERE Maps API, SEARCH (PLACES) AND GEOCODING APIs
  - ROUTING APIs"
  spec.homepage = "http://github.com/agrawald/heremaps"
  spec.license = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "debase", "~> 0.2.4.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.8.0"
  spec.add_development_dependency "ruby-debug-ide", "~> 0.7.0"
  spec.add_development_dependency "solargraph", "~> 0.37.2"
end
