module Heremaps
  module Places
    class Categories < Base
      BASE_URL = "https://places.#{Heremaps.domain}/places".freeze
      PATH = "/v1/".freeze

      def initialize
        @base_url = BASE_URL
        @path = PATH
        @method_name = "categories/places".freeze # getroute as default method.
      end
    end
  end
end
