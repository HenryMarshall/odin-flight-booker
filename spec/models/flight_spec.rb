describe Flight do

  before do 
    @origin = Airport.new airport_code: "JAX"
    @destination = Airport.new airport_code: "JFK"
    @flight = Flight.new flight_number: 616, duration: 4.5, 
                          departure_time: Time.new,
                          from_airport: @origin, to_airport: @destination
  end

  subject { @flight }

  it { should respond_to(:flight_number) }
  it { should respond_to(:duration) }
  it { should respond_to(:origin_id) }
  it { should respond_to(:from_airport) }
  it { should respond_to(:destination_id) }
  it { should respond_to(:to_airport) }
  it { should respond_to(:departure_time) }
  it { should respond_to(:passengers) }

  it { should be_valid }


  describe "origin should be JAX" do
    specify { expect(@flight.from_airport).to eq(@origin) }
  end

  describe "destination should be JFK" do
    specify { expect(@flight.to_airport).to eq(@destination) }
  end

  describe '#passengers' do
    before do
      @passenger = @flight.passengers.build name:"Bar Foo", email:"bar@foo.com"
    end

    specify { expect(@flight.passengers).to include(@passenger) }
    # Why doesn't this work? (internet is down or I'd check right now)
    # its(:passengers) { should include(@passenger) }

  end

end