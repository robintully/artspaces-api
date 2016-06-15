class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :img_link
  has_many :arts
  belongs_to :user
end
