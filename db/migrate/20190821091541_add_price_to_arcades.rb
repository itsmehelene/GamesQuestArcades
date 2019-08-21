class AddPriceToArcades < ActiveRecord::Migration[5.2]
  def change
    add_column :arcades, :price, :float
  end
end
