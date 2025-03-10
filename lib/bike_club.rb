class BikeClub
  attr_reader :name, :bikers
  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker)
    @bikers << biker
  end

  def biker_names
    @bikers.map do |biker|
      biker.name
    end
  end

  def most_rides
    ride_count = 0
    @bikers.each do |biker|


    end
  end

end