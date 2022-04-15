class CreateScops < ActiveRecord::Migration[7.0]
  def change
    create_table :scops do |t|
      t.integer :age

      t.timestamps
    end
  end
end
