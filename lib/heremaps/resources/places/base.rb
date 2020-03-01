module Heremaps
  module Places
    class Base < Heremaps::Base
      def request_url
        url = File.join("https://", service + "." + Heremaps::DOMAIN, path, method_name.to_s)
        url
      end

      def get(options = {}, headers = {})
        res = RestClient::Request.execute(:method => :get, :url => request_url, :headers => headers.merge(:params => prepare_the_request(options)))
        res
      end
    end
  end
end
