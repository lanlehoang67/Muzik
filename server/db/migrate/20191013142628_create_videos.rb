class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :name
      t.references :artist, foreign_key: true
      t.string :src
      t.string :description

      t.timestamps
    end
  end
end
