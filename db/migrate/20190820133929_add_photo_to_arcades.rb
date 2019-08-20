class AddPhotoToArcades < ActiveRecord::Migration[5.2]
  def change
    add_column :arcades, :photo, :string
  end
end
