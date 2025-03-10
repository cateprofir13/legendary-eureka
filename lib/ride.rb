class Ride
  attr_reader :name, :distance, :terrain
  def initialize(data)
    @name = data[:name]
    @distance = data[:distance]
    @terrain = data[:terrain]
    @loop = data[:loop] 
  end
  def loop?
    @loop
  end

  def total_distance
    if loop? == true
      @distance 
    else 
      @distance * 2
    end
  end
end