class Artist < ApplicationRecord
	has_many :songs
	has_many :albums
	scope :select_approved, ->(){where("approved=true")}
end
