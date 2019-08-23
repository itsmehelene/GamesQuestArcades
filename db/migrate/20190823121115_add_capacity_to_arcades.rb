class AddCapacityToArcades < ActiveRecord::Migration[5.2]
  def change
    add_column :arcades, :capacity, :integer
  end
end
