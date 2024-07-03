class Passenger < ApplicationRecord
  has_many :bookings
  has_many :bookings, through: :passenger_bookings
end
