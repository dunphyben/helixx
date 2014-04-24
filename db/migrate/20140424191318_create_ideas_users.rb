class CreateIdeasUsers < ActiveRecord::Migration
  def change
    create_table :ideas_users do |t|
      t.column :idea_id, :int
      t.column :user_id, :int
    end
  end
end
