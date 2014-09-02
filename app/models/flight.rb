class Flight < ActiveRecord::Base
  # origin_id, destination_id, flight_number, departure_time, duration
  belongs_to :from_airport, foreign_key: :origin_id, class_name: "Airport"
  belongs_to :to_airport, foreign_key: :destination_id, class_name: "Airport"
end
