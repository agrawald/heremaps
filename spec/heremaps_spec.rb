RSpec.describe Heremaps do
  it "has a version number" do
    expect(Heremaps::VERSION).not_to be nil
  end

  it "has a api key" do
    expect(Heremaps::API_KEY).not_to be nil
  end

  it "has a domain" do
    expect(Heremaps::DOMAIN).not_to be nil
  end
end
