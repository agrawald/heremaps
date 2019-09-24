require "heremaps"

RSpec.describe Heremaps::Places::Categories do
  describe "API called" do
    describe "with geocoordinates" do
      options = { :at => "41.8369,-87.6840" }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "with no options" do
      options = {}
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end
  end
end
