class Ride
  attr_reader :name, :distance, :terrain
  def initialize(data)
    @name = data[:name]
    @distance = data[:distance]
    @terrain = data[:terrain]
    @loop = data[:loop] = false
  end
  def loop?
    @loop
  end
end