class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :created_at
  belongs_to :artist
end
