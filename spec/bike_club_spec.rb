require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do
  before(:each) do
    @bike_club = BikeClub.new("Bikers Unite")
  end

  it "exists and has a name" do
    expect(@bike_club).to be_a(BikeClub)
    expect(@bike_club.name).to eq("Bikers Unite")
  end
end