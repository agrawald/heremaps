module Heremaps
  module Routing
    class CalculateIsoline < Heremaps::Base
      SERVICE = "isoline.route".freeze
      PATH = "/routing/7.2/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "calculateisoline".freeze # getroute as default method.
      end
    end
  end
end
