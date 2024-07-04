class BookingsController < ApplicationController

  def new 
    @booking = Booking.new(flight_id: params[:flight_id])
    params[:no_of_passengers].to_i.times { @booking.passenger_bookings.build.build_passenger }

    puts 'the booking details are'
    p params
    p @booking
  end

  def show 
    puts 'got here'
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
    @arrival_airport = Airport.find(@flight.arrival_airport_id)
    @departure_airport = Airport.find(@flight.departure_airport_id)
  end

  def create 
    puts 'submitted params are'
    p params
    @booking = Booking.new(booking_params)
    if @booking.save! 
      redirect_to @booking, notice: 'The booking was successfully created'
    else  
      render :new, status: :unprocessable_entity 
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passenger_bookings_attributes: [ passenger_attributes: [:name, :email]])
  end
end
