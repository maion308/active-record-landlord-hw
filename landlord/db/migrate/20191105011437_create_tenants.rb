class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.varchar :first_name
      t.varchar :last_name
      t.date :birth_date
      t.varchar :nickname
      t.varchar :occupation
      t.varchar :ssn
      t.boolean :has_pets

      t.timestamps
    end
  end
end
