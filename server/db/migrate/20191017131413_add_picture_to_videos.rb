class AddPictureToVideos < ActiveRecord::Migration[5.2]
  def change
  	change_table :videos do |t|
  		t.string :picture_file_name
        t.string :picture_content_type
        t.integer :picture_file_size
  	end
  end
end
