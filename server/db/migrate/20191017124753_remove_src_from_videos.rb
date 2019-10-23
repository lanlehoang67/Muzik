class RemoveSrcFromVideos < ActiveRecord::Migration[5.2]
  def change
    remove_column :videos, :src, :string
  end
end
