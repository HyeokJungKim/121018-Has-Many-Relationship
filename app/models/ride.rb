class Ride
  attr_reader :driver, :passenger, :distance
  @@all = []
  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    sum = Ride.all.map { |ride| ride.distance }.inject(0,:+)
    sum / self.all.count
  end
end
