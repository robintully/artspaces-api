class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :spaces
  has_many :arts
end
