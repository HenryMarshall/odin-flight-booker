class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @passenger = Passenger.new
  end

  def create
    passengers_params = params[:booking][:passenger]
    bookings = []
    passengers_params.each do |index, p_params|
      passenger = Passenger.find_or_create_by(name: p_params[:name],
                                              email: p_params[:email])
      bookings << Booking.create(passenger: passenger, 
                                flight_id: params[:booking][:flight_id])
    end
  end

  def show

  end

end
