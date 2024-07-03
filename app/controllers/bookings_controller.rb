class BookingsController < ApplicationController

  def new 
    @booking = Booking.new
    puts 'the booking details are'
    p params
  end

  def create 
    @booking = Booking.new(params)
  end
end
