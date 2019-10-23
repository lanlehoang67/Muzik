class Event < ApplicationRecord
	mount_uploader :picture, PictureUploader
	mount_uploader :hot_picture, PictureUploader
	scope :newest, ->{all.order(created_at: :desc).limit(4)}
	scope :hot, ->{where("events.type_event == 'hot'").order(created_at: :desc).limit(3)}
end
