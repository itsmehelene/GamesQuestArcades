class CreateArcades < ActiveRecord::Migration[5.2]
  def change
    create_table :arcades do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :zip_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
