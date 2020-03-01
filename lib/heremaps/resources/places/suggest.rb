module Heremaps
  module Places
    class Suggest < Base
      SERVICE = "places".freeze
      PATH = "/places/v1/".freeze

      def initialize
        @service = SERVICE
        @path = PATH
        @method_name = "suggest".freeze # getroute as default method.
      end
    end
  end
end
