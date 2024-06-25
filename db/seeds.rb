# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

airports = []
15.times do 
  airports.push([Faker::University.unique.greek_organization, Faker::Address.unique.city + " Airport"])
end

airports.each do |a|
  Airport.find_or_create_by!(code: a[0], city: a[1])
end

p Airport.all

30.times do 
  departure_time = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default)
  departure_airport = Airport.find(rand(14) + 1)
  arrival_airport = Airport.find(rand(14) + 1)
  next if departure_airport == arrival_airport

  Flight.create!(
    departure_time: departure_time,
    flight_duration: rand(500),
    departure_airport: departure_airport,
    arrival_airport: arrival_airport
  )
end
