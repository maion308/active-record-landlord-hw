class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :unit
      t.integer :num_beds
      t.integer :num_baths
      t.integer :monthly_rent
      t.boolean :allow_pets
      t.integer :sq_ft
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
