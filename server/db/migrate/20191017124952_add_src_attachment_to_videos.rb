class AddSrcAttachmentToVideos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :posts do |t|
      t.attachment :video
    end
  end

  def self.down
    drop_attached_file :posts, :video
  end
 def change
 	drop_table :videos
    create_table :videos do |t|
    	t.string :name
    	t.string :description
    	t.references :artist, foreign_key: true
    	t.integer :views
    	t.string :length
        t.string :video_file_name
        t.string :video_content_type
        t.integer :video_file_size
        t.datetime :video_updated_at

        t.timestamps
    end
  end
end
