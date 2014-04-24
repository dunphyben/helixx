class CreateIdeasTags < ActiveRecord::Migration
  def change
    create_table :ideas_tags do |t|
      t.column :idea_id, :int
      t.column :tag_id, :int
    end
  end
end
