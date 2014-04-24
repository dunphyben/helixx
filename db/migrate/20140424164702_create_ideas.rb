class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.boolean :published
      t.string :slug


      t.timestamps
    end

    add_index :ideas, :slug
    add_index :ideas, :title
  end
end
