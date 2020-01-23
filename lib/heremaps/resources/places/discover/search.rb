module Heremaps
  module Places
    module Discover
      class Search < Base
        SERVICE = "places".freeze
        PATH = "/places/v1/".freeze

        def initialize
          @service = SERVICE
          @path = PATH
          @method_name = "discover/search".freeze # getroute as default method.
        end
      end
    end
  end
end
