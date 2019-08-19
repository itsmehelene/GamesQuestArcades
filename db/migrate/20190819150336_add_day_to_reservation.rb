class AddDayToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :day, :date
  end
end
