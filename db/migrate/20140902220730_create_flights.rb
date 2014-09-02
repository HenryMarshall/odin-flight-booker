class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :origin_id
      t.integer :destination_id
      t.integer :flight_number
      t.datetime :departure_time
      t.decimal :duration

      t.timestamps
    end
  end
end
