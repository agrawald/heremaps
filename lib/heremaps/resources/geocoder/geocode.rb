module Heremaps
  module Geocoder
    class Geocode < Heremaps::Base
      BASE_URL = "https://geocoder.#{Heremaps.domain}".freeze
      PATH = "/6.2/".freeze

      def initialize
        @base_url = BASE_URL
        @path = PATH
        @method_name = "geocode".freeze # getroute as default method.
      end
    end
  end
end
