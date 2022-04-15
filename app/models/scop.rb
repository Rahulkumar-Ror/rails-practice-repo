class Scop < ApplicationRecord
  scope :minors, -> { where(age: 1..17) }
end
