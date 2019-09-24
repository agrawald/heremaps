require "heremaps"

RSpec.describe Heremaps::Routing::CalculateMatrix do
  describe "API called" do
    describe "for One to Many matrix routing" do
      options = { :start0 => "40.7790,-73.9622", :destination0 => "40.7482,-73.9860", :destination1 => "40.7558,-73.9870", :destination2 => "40.7054,-73.9961", :mode => "fastest;truck;traffic:disabled;" }
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
