module Heremaps
  module Routing
    class GetRoute < Heremaps::Base
      BASE_URL = "https://route.api.here.com/routing".freeze
      TEST_URL = "https://route.cit.api.here.com/routing".freeze
      PATH = "/7.2/".freeze

      def initialize
        @base_url = BASE_URL
        @test_url = TEST_URL
        @path = PATH
        @method_name = "getroute".freeze # getroute as default method.
      end
    end
  end
end
