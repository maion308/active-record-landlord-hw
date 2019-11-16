class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :nickname
      t.string :occupation
      t.integer :ssn
      t.boolean :has_pets
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
