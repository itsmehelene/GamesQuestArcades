class AddCoordinatesToArcades < ActiveRecord::Migration[5.2]
  def change
    add_column :arcades, :latitude, :float
    add_column :arcades, :longitude, :float
  end
end
