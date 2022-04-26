class CreateSsses < ActiveRecord::Migration[7.0]
  def change
    create_table :ssses do |t|
      t.string :title

      t.timestamps
    end
  end
end
