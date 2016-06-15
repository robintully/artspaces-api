class ArtSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :img_link
  has_many :spaces
  belongs_to :user
end
