module Heremaps
  module Geocoder
    class MultiReverse < Heremaps::Base
      BASE_URL = "https://reverse.geocoder.api.here.com".freeze
      TEST_URL = "http://reverse.geocoder.cit.api.here.com".freeze
      PATH = "/6.2/".freeze

      def initialize
        @base_url = BASE_URL
        @test_url = TEST_URL
        @path = PATH
        @method_name = "multi-reversegeocode".freeze # getroute as default method.
      end
    end
  end
end
