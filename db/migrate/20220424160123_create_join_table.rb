class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :news do |t|
      # t.index [:student_id, :new_id]
      # t.index [:new_id, :student_id]
    end
  end
end
