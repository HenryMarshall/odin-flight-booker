class Booking < ActiveRecord::Base
  belongs_to :passenger
  belongs_to :flight

  accepts_nested_attributes_for :passenger

  validates :passenger_id, presence: true
  validates :flight_id, presence: true
end
