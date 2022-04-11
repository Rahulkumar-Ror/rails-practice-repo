class History < ApplicationRecord
  has_paper_trail on: [:update, :destroy], only: [:title]
end
