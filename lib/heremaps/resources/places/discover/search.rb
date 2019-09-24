module Heremaps
  module Places
    module Discover
      class Search < Base
        BASE_URL = "https://places.api.here.com/places".freeze
        TEST_URL = "https://places.cit.api.here.com".freeze
        PATH = "/v1/".freeze

        def initialize
          @base_url = BASE_URL
          @test_url = TEST_URL
          @path = PATH
          @method_name = "discover/search".freeze # getroute as default method.
        end
      end
    end
  end
end
