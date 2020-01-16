module Heremaps
  module Routing
    class CalculateIsoline < Heremaps::Base
      BASE_URL = "https://isoline.route.#{Heremaps.domain}/routing".freeze
      PATH = "/7.2/".freeze

      def initialize
        @base_url = BASE_URL
        @path = PATH
        @method_name = "calculateisoline".freeze # getroute as default method.
      end
    end
  end
end
