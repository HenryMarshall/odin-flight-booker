class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.airport_code, a.id] }
    @dates = Flight.uniq.pluck(:date).map { |d| [d.strftime('%a %b %d %Y'), d] }
    # on first access flight_params are empty -- this returns everything
    unless flight_params.empty?
      @flights = Flight.where(flight_params).order(:departure_time)
    end
  end

  private

    def flight_params
      params.permit(:from_airport, :to_airport, :date)
    end
end
