class RemoveCityFromArcades < ActiveRecord::Migration[5.2]
  def change
    remove_column :arcades, :city, :string
  end
end
