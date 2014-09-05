# require 'spec_helper'

describe Airport do
  before { @airport = Airport.new(airport_code: "JFK") }
  subject { @airport }

  it { should respond_to(:airport_code) }
  it { should respond_to(:departing_flights) }
  it { should respond_to(:arriving_flights) }
  it { should be_valid }

  describe "without airport code" do
    before { @airport.airport_code = nil }
    it { should_not be_valid }
  end

  describe "should list departing/arriving flights" do
    before do
      @airport.save
      @destination = Airport.create(airport_code: "LAX")
      @flight = Flight.create flight_number: 616, duration: 4.5, 
                          departure_time: Time.new,
                          from_airport: @airport, to_airport: @destination
    end

    specify { expect(@airport.departing_flights).to include(@flight) }
    specify { expect(@destination.arriving_flights).to include(@flight) }
    

  end

end