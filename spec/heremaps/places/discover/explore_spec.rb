require "heremaps"

RSpec.describe Heremaps::Places::Discover::Explore do
  describe "API called" do
    describe "by category accomodation" do
      options = { :at => "52.5159,13.3777", :cat => "accomodation" }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "within a bounding-box" do
      options = { :in => "-122.408,37.793,-122.4070,37.7942" }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "using implicit context" do
      headers = { :Geolocation => "geo:41.8369,-87.6847;cgen=gps", :"X-Map-Viewport" => "-122.408,37.793,-122.4070,37.7942" }

      res = described_class.new.get({}, headers)
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end
  end
end
