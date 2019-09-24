module Heremaps
  module Routing
    class CalculateMatrix < Heremaps::Base
      BASE_URL = "https://matrix.route.api.here.com/routing".freeze
      TEST_URL = "https://matrix.cit.route.api.here.com/routing".freeze
      PATH = "/7.2/".freeze

      def initialize
        @base_url = BASE_URL
        @test_url = TEST_URL
        @path = PATH
        @method_name = "calculatematrix".freeze # getroute as default method.
      end
    end
  end
end
