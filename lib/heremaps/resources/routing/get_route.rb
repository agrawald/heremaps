module Heremaps
  module Routing
    class GetRoute < Heremaps::Base
      SERVICE = "route".freeze
      PATH = "/routing/7.2/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "getroute".freeze # getroute as default method.
      end
    end
  end
end
