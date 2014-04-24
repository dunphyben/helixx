class Create < ActiveRecord::Migration
  create_table :formats_ideas do |t|
      t.column :format_id, :int
      t.column :idea_id, :int

      t.timestamps

  end
end
