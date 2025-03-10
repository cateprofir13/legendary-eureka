require './lib/ride'
require './lib/biker'
RSpec.describe Biker do
  before(:each) do
    @biker = Biker.new("Kenny", 30)
  end
  it "exists and has attr" do
    expect(@biker).to be_a(Bike)
    expect(@biker.name).to eq("Kenny")
    expect(@biker.max_distance).to eq(30)
  end
end