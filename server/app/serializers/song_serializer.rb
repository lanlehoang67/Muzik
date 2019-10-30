class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :album, :picture, :url
  has_many :user_favorites, foreign_key: "favorite_id"
  has_many :song_genres
	has_many :genres, through: :song_genres
  has_many :comments
  has_many :history_songs
  has_many :users, through: :history_songs
	belongs_to :artist
  belongs_to :user
  belongs_to :play_list, optional: true
  belongs_to :album
  
end
