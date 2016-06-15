class User < ApplicationRecord
  has_many :arts
  has_many :spaces
end
