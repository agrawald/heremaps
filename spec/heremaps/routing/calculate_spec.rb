require "heremaps"

RSpec.describe Heremaps::Routing::Calculate do
  describe "API called" do
    describe "for truck route from A to B" do
      options = { :waypoint0 => "41.9805,-87.8799", :waypoint1 => "41.9043,-87.9216", :mode => "fastest;truck" }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "with no options" do
      begin
        options = {}
        described_class.new.get options
      rescue => e
        it "status = 400 Bad Request" do
          expect(e.http_code).to eq(400)
        end
      end
    end
  end
end
