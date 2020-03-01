module Heremaps
  module Routing
    class Calculate < Heremaps::Base
      # route.ls.hereapi.com/routing/7.2/calculateroute.json
      SERVICE = "route".freeze
      PATH = "/routing/7.2/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "calculateroute".freeze # getroute as default method.
      end
    end
  end
end
