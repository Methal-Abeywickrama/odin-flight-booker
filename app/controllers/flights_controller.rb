class FlightsController < ApplicationController
  def index
    @flights = Flight.all

    if params[:departure_airport_id].present?
      p params
      puts 'class is'
      departure_date = Date.new(
        params["[departure_date(1i)]"].to_i,
        params["[departure_date(2i)]"].to_i,
        params["[departure_date(3i)]"].to_i
      )
      @selected_departure_date = departure_date
      p params
      # departure_date = Date.new(
      #   params["departure_date(1i)"].to_i,
      #   params["departure_date(2i)"].to_i,
      #   params["departure_date(3i)"].to_i
      # )
      p departure_date
      # Extract the parameters
      departure_airport_id = params[:departure_airport_id]
      arrival_airport_id = params[:arrival_airport_id]
      number_of_passengers = params[:number_of_passengers]
      # departure_date = Date.parse(params[:departure_date])
  
      # departure_date = Date.new(params["departure_date(1i)"].to_i, params["departure_date(2i)"].to_i, params["departure_date(3i)"].to_i)

      # Query the flights based on the parameters
      @suitable_flights = Flight.where(
        departure_airport_id: departure_airport_id,
        arrival_airport_id: arrival_airport_id,
        departure_time: departure_date.beginning_of_day..departure_date.end_of_day
      )
      puts 'flight is'
      p @suitable_flights
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  
end
