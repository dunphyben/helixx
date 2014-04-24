
class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video_url
      t.integer :idea_id
      t.integer :user_id

      t.timestamps
    end
  end
end
