module Heremaps
  module Geocoder
    class Landmark < Heremaps::Base
      SERVICE = "geocoder".freeze
      PATH = "/6.2/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "search".freeze # getroute as default method.
      end
    end
  end
end
