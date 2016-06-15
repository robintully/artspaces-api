class Space < ApplicationRecord
  belongs_to :user
  has_many :art_spaces
  has_many :arts, through: :art_spaces
end
