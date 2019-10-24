class GenreSerializer < ActiveModel::Serializer
  attributes :id, :title, :songs
  has_many :song_genres
  has_many :songs, through: :song_genres
end
