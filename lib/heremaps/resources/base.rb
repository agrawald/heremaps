module Heremaps
  class Base
    attr_accessor :method_name, :base_url, :test_url, :path

    def request_url(format: "json")
      format ||= "json"
      url = (Heremaps.env == "test") ? test_url : base_url
      url = File.join(url, path, "#{method_name}.#{format}")
      url
    end

    def get(options = {})
      res = RestClient.get(request_url(:format => options[:format]), :params => prepare_the_request(options))
      res
    end

    def prepare_the_request(options = {})
      options = options.merge(:app_id => Heremaps.app_id, :app_code => Heremaps.app_code)
      options
    end

    def self.get(options = {})
      new.get(options)
    end

    # direct call to instance methods as class methods.
    def response_to_missing?(method_sym, *arg, &block)
      if instance_methods.include?(method_sym)
        new.send(method_sym, *arg, &block)
      else
        super
      end
    end
  end
end
