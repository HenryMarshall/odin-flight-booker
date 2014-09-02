describe Flight do

  before { @flight = Flight.new flight_number: 616, duration: 4.5,
                                origin_id: 7, destination_id: 8,
                                departure_time: Time.new }
  subject { @flight }

  it { should respond_to(:flight_number) }
  it { should respond_to(:duration) }
  it { should respond_to(:origin_id) }
  it { should respond_to(:from_airport) }
  it { should respond_to(:destination_id) }
  it { should respond_to(:to_airport) }
  it { should respond_to(:departure_time) }

  it { should be_valid }

end