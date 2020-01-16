module Heremaps
  module Places
    module Discover
      class Search < Base
        BASE_URL = "https://places.#{Heremaps.domain}/places".freeze
        PATH = "/v1/".freeze

        def initialize
          @base_url = BASE_URL
          @path = PATH
          @method_name = "discover/search".freeze # getroute as default method.
        end
      end
    end
  end
end
