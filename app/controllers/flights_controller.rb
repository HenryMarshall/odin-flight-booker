class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.airport_code, a.id] }
    @dates = Flight.uniq.pluck(:date).map { |d| [d.strftime('%a %b %d %Y'), d] }
  end
end
