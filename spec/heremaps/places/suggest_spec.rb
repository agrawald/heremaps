require "heremaps"

RSpec.describe Heremaps::Places::Suggest do
  describe "API called" do
    describe "with search suggestion" do
      options = { :at => "52.5159,13.3777", :q => "berlin" }
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
