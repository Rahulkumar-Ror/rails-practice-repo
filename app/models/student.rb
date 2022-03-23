class Student < ApplicationRecord
  # validates :student_name, :email, presence :true, uniqueness :true
  has_one_attached :student_pic do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
  end
  has_one_attached :student_resume
end
