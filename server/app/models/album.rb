class Album < ApplicationRecord
	has_many :user_favorites, foreign_key: "favorite_id"
	has_many :songs, dependent: :destroy
	belongs_to :artist
	scope :recent, ->{order(created_at: :desc).limit(12)}

	def picture_from_url url
    self.picture = open url
  end
end
