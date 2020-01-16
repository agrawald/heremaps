module Heremaps
  module Geocoder
    class MultiReverse < Heremaps::Base
      BASE_URL = "https://reverse.geocoder.#{Heremaps.domain}".freeze
      PATH = "/6.2/".freeze

      def initialize
        @base_url = BASE_URL
        @path = PATH
        @method_name = "multi-reversegeocode".freeze # getroute as default method.
      end
    end
  end
end
