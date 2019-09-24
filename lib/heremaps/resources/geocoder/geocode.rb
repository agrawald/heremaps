module Heremaps
  module Geocoder
    class Geocode < Heremaps::Base
      BASE_URL = "https://geocoder.api.here.com".freeze
      TEST_URL = "https://geocoder.cit.api.here.com".freeze
      PATH = "/6.2/".freeze

      def initialize
        @base_url = BASE_URL
        @test_url = TEST_URL
        @path = PATH
        @method_name = "geocode".freeze # getroute as default method.
      end
    end
  end
end
