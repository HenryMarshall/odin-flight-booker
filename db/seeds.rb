# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create airports
Airport.delete_all
airport_codes = %w(ATL LAX ORD DFW DEN)
airports = airport_codes.map do |airport_code| 
  Airport.create airport_code: airport_code
end

# create airports
Flight.delete_all
flight_number = 100
airports.each do |origin|
  airports.each do |destination|
    unless origin == destination
      flight_duration = Random.rand(8) + 1
      # Create 3 flights for each route
      3.times do |day|
        flight = Flight.create flight_number: flight_number,
                               date: day.days.from_now,
                               duration: flight_duration,
                               from_airport: origin,
                               to_airport: destination
        flight_number += 1
      end
    end
  end
end