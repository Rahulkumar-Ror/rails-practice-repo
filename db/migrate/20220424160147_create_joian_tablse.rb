class CreateJoianTablse < ActiveRecord::Migration[7.0]
  def change
    create_table :joian_tablses do |t|
      t.string :student
      t.string :blog

      t.timestamps
    end
  end
end
