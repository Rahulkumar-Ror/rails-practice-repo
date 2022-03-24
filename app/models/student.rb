class Student < ApplicationRecord
  validates_presence_of :student_name, :email, :dob
  has_one_attached :student_pic do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
  has_one_attached :student_resume
  has_many_attached :images
  # has_many :pictures
  # mount_uploader :picture, PictureUploader
  validate :dob_cannot_be_in_fufure

  def dob_cannot_be_in_fufure
    if dob.present? && dob > Date.today
      errors.add(:dob, "Birthday Cant be in future")
    end
  end
end
