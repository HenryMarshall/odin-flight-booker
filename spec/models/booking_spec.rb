describe Booking do

  before do
    @passenger = Passenger.create name: "Foo Bar", email: "foo@bar.com"
    @flight = Flight.create flight_number: 616, duration: 4.5, 
                          departure_time: Time.new,
                          origin_id: 1, destination_id: 2
    @booking = Booking.new passenger_id: @passenger.id, flight_id: @flight.id

  end

  subject { @booking }


  it { should be_valid }

  describe "#flight" do
    it { should respond_to(:flight) }
    # its(:flight) { should eq(@flight) }
  end

  describe '#passenger' do
    it { should respond_to(:passenger) }
    # its(:passenger) { should eq(@passenger) }
  end

  describe "when flight_id is not present" do
    before { @booking.flight_id = nil }
    it { should_not be_valid }
  end

  describe "when passenger_id is not present" do
    before { @booking.passenger_id = nil }
    it { should_not be_valid }
  end

end