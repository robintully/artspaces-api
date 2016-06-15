class Art < ApplicationRecord
  belongs_to :user
  has_many :art_spaces
  has_many :spaces, through: :art_spaces
end
