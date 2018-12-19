class Driver
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    self.rides.map {|ride| ride.passenger}
  end

  def passenger_names
    array = passengers.map {|passenger| passenger.name}
    array.uniq
  end

  def total_distance
    # self.rides.map{|ride| ride.distance}.reduce(0, :+)
    self.rides.inject(0) {|total, ride| total + ride.distance}
  end

  def self.mileage_cap(distance)
    self.all.select do |driver|
      driver.total_distance > distance
    end
  end
















end
