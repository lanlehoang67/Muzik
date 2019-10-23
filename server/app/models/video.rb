class Video < ApplicationRecord
  belongs_to :artist
  scope :recent, ->{order(created_at: :desc).limit(3)}
  has_attached_file :video
   has_attached_file :picture, validate_media_type: false
     validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    validates_attachment_content_type :video, content_type: /\Avideo\/.*\Z/
end
