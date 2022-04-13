class CreatePonds < ActiveRecord::Migration[7.0]
  def change
    create_table :ponds do |t|
      t.string :name

      t.timestamps
    end
  end
end
