class CreateDucks < ActiveRecord::Migration[7.0]
  def change
    create_table :ducks do |t|
      t.string :name
      t.string :color
      t.integer :pond_id

      t.timestamps
    end
  end
end
