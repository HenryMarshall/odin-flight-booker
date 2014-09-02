# require 'spec_helper'

describe Airport do
  before { @airport = Airport.new(airport_code: "JFK") }
  subject { @airport }

  it { should respond_to(:airport_code) }
  it { should be_valid }

  describe "without airport code" do
    before { @airport.airport_code = nil }
    it { should_not be_valid }
  end

end