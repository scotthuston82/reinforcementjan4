class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end

class Trip

  def initialize
    @stops = []
  end

  def add_stop(location)
    @stops << location
  end

  def itinerary
    puts "Began trip"
    @stops.each_cons(2) do |trip_leg|
      puts "Travelled from #{trip_leg[0].name} to #{trip_leg[1].name}"
    end
    puts "Ended trip"
  end

end

toronto = Location.new('Toronto')
guelph = Location.new('Guelph')
huntsville = Location.new('Huntsville')
barrie_island = Location.new('Barrie Island')
ottawa = Location.new('Ottawa')

my_trip = Trip.new

my_trip.add_stop(toronto)
my_trip.add_stop(guelph)
my_trip.add_stop(huntsville)
my_trip.add_stop(barrie_island)
my_trip.add_stop(ottawa)
my_trip.add_stop(toronto)

my_trip.itinerary
