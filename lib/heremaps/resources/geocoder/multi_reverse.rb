module Heremaps
  module Geocoder
    class MultiReverse < Heremaps::Base
      SERVICE = "reverse.geocoder".freeze
      PATH = "/6.2/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "multi-reversegeocode".freeze # getroute as default method.
      end
    end
  end
end
