module Heremaps
  VERSION = "0.2.0".freeze
  API_KEY = ENV["HEREMAPS_API_KEY"] || "NOT_PROVIDED"
  DOMAIN = ENV["HEREMAPS_DOMAIN"] || "ls.hereapi.com"
end
