class RemoveZipCodeFromArcades < ActiveRecord::Migration[5.2]
  def change
    remove_column :arcades, :zip_code, :integer
  end
end
