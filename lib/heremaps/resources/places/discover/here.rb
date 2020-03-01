module Heremaps
  module Places
    module Discover
      class Here < Base
        SERVICE = "places".freeze
        PATH = "/places/v1/".freeze

        def initialize
          @service = SERVICE
          @path = PATH
          @method_name = "discover/here".freeze # getroute as default method.
        end
      end
    end
  end
end
