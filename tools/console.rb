require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
d1 = Driver.new("John")
d2 = Driver.new("Abe")
d3 = Driver.new("Kevin")

p1 = Passenger.new("Spongebob")
p2 = Passenger.new("Squidward")
p3 = Passenger.new("Patrick")

r1 = Ride.new(d1, p1, 50.0)
r2 = Ride.new(d1, p2, 125.0)
r3 = Ride.new(d1, p1, 75.0)
r4 = Ride.new(d2, p3, 50.0)




#
binding.pry
