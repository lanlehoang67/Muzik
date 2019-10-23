class CreateEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :emotions do |t|
      t.string :type
      t.string :song_name
      t.string :song_src
      t.string :description

      t.timestamps
    end
  end
end
