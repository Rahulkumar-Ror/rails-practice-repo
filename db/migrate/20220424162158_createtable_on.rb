class CreatetableOn < ActiveRecord::Migration[7.0]
  change_table :managers do |t|
    t.remove :email, :email_address
    t.string :part_number
    t.string :depart
    t.index :part_number
    t.rename :department, :upc_code
  end
end
