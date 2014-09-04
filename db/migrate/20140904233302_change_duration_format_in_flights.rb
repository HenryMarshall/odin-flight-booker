class ChangeDurationFormatInFlights < ActiveRecord::Migration
  def up
    change_column :flights, :duration, :integer
  end

  def down
    change_column :flights, :duration, :decimal
  end
end
