require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do
  before(:each) do
    @bike_club = BikeClub.new("Bikers Unite")
    @biker = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @biker3 = Biker.new("Cate", 100)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end

  it "exists and has a name" do
    expect(@bike_club).to be_a(BikeClub)
    expect(@bike_club.name).to eq("Bikers Unite")
    expect(@bike_club.bikers).to eq([])
  end

  it "returns an array of biker" do
    @bike_club.add_biker(@biker1)
    @bike_club.add_biker(@biker2)
    @bike_club.add_biker(@biker3)

    expect(@bike_club.bikers).to eq([@biker1, @biker2, @biker3])

  end

  it "returns bikers name" do
    @bike_club.add_biker(@biker1)
    @bike_club.add_biker(@biker2)
    @bike_club.add_biker(@biker3)
    expect(@bike_club.biker_names).to eq(["Kenny", "Athena", "Cate"])
  end

  it "returns the biker who took most_rides" do

    @biker1.log_ride(@ride1, 92.5)
    @biker1.log_ride(@ride2, 61.6)
    @biker2.log_ride(@ride2, 60.9)

    @bike_club.add_biker(@biker1)
    @bike_club.add_biker(@biker2)

    expect(@bike_club.most_rides).to eq([@biker1])

  end
end