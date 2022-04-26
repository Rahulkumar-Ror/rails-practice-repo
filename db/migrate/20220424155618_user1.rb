class User1 < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :blogs
  end
end
