class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :new
  belongs_to :event
end
