class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.varchar :unit
      t.integer :num_beds
      t.integer :num_baths
      t.integer :monthly_rent
      t.boolean :allow_pets
      t.integer :sq_ft

      t.timestamps
    end
  end
end
