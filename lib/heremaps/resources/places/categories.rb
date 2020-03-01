module Heremaps
  module Places
    class Categories < Base
      SERVICE = "places".freeze
      PATH = "/places/v1/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "categories/places".freeze # getroute as default method.
      end
    end
  end
end
