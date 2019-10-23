class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :user_favorite, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
