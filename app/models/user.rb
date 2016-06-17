class User < ApplicationRecord
  has_many :arts
  has_many :spaces
  has_secure_password
end
