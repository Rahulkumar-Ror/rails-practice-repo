class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :email
      t.integer :phone
      t.date :dob
      t.string :student_pic
      t.string :student_resume

      t.timestamps
    end
  end
end
