require "heremaps"

RSpec.describe Heremaps::Geocoder::MultiReverse do
  describe "API called" do
    describe "with retrieveAddresses" do
      options = { :mode => "retrieveAddresses", :gen => 9 }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "with retrieveAreas" do
      options = { :mode => "retrieveAreas", :gen => 9 }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "with retrieveLandmarks" do
      options = { :mode => "retrieveLandmarks", :gen => 9 }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "with retrieveLandmarks" do
      options = { :mode => "retrieveLandmarks", :gen => 9 }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "with retrieveAll" do
      options = { :mode => "retrieveAll", :gen => 9 }
      res = described_class.new.get options
      it "response != empty" do
        expect(res).not_to be_empty
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end

    describe "with trackPosition" do
      options = { :mode => "trackPosition", :gen => 9 }
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
      it "response == empty" do
        expect(res).to eq("{}")
      end
      it "status = 200 OK" do
        expect(res.net_http_res.code).to eq("200")
      end
    end
  end
end
