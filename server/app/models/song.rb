class Song < ApplicationRecord
	has_many :user_favorites, foreign_key: "favorite_id"
  has_many :song_genres
	has_many :genres, through: :song_genres
  has_many :comments
  has_many :history_songs
  has_many :users, through: :history_songs
  has_many :lyrics
	belongs_to :artist
  belongs_to :user
  belongs_to :play_list, optional: true
  belongs_to :album
  delegate :name, to: :artist, prefix: true
  scope :feature, -> {where("songs.featured=true").limit(12)}
  scope :top, ->{where("songs.approved=true").order(views: :desc).limit(8)}
  scope :recent, ->{where("songs.approved=true").order(created_at: :desc).limit(8)}
  scope :find_by_genre, ->(genre_to_find){joins(:genres).where("genres.title = ? and songs.approved=true",genre_to_find) }
  scope :find_by_country, ->(country_to_find){where("songs.country = ? and songs.approved=true",country_to_find)}
  scope :trending, ->{where("songs.approved=true").order(views: :desc).limit(10)}
   def check_admin
    return self.approved = true if self.user.role == "admin"
  end
end
