module Heremaps
  module Routing
    class Calculate < Heremaps::Base
      # route.ls.hereapi.com/routing/7.2/calculateroute.json
      BASE_URL = "https://route.#{Heremaps.domain}/routing".freeze
      PATH = "/7.2/".freeze

      def initialize
        @base_url = BASE_URL
        @path = PATH
        @method_name = "calculateroute".freeze # getroute as default method.
      end
    end
  end
end
