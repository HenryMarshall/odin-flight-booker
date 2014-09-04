class ChangeDatetimeFormatInFlights < ActiveRecord::Migration
  def self.up
    remove_column :flights, :departure_time
    add_column :flights, :date, :date
  end

  def self.down
    remove_column :flights, :date
    add_column :flights, :departure_time, :datetime
  end
end
