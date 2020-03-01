require "heremaps/version"

module Heremaps
  class Error < StandardError; end

  # Your code goes here...

  require "rest-client"
  require "heremaps/resources/base"

  # geocoder APIs
  require "heremaps/resources/geocoder/geocode"
  require "heremaps/resources/geocoder/landmark"
  require "heremaps/resources/geocoder/multi_reverse"
  require "heremaps/resources/geocoder/reverse"

  # places APIs
  require "heremaps/resources/places/base"
  require "heremaps/resources/places/categories"
  require "heremaps/resources/places/suggest"
  require "heremaps/resources/places/discover/search"
  require "heremaps/resources/places/discover/here"
  require "heremaps/resources/places/discover/explore"

  # routing APIs
  require "heremaps/resources/routing/calculate"
  require "heremaps/resources/routing/calculate_isoline"
  require "heremaps/resources/routing/calculate_matrix"
  require "heremaps/resources/routing/get_route"
  require "heremaps/resources/routing/get_routing_zones"
end
