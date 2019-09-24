require "heremaps"

RSpec.describe Heremaps::Places::Discover::Here do
  describe "API called" do
    describe "with accomodation" do
      options = { :at => "37.7942,-122.4070" }
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
