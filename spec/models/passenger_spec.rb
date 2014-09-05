describe Passenger do
  
  before { @passenger = Passenger.new name: "Foo Bar", email: "foo@bar.com" }

  subject { @passenger }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:flights) }

  it { should be_valid }

  describe '#flights' do

    before do
      @passenger.save
      @flight = @passenger.flights.build flight_number: 616, duration: 4.5, 
                                          departure_time: Time.new,
                                          origin_id: 1, destination_id: 2
    end

    specify { expect(@passenger.flights).to include(@flight) }

  end

end