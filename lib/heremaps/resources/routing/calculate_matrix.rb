module Heremaps
  module Routing
    class CalculateMatrix < Heremaps::Base
      SERVICE = "matrix.route".freeze
      PATH = "/routing/7.2/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "calculatematrix".freeze # getroute as default method.
      end
    end
  end
end
