class CreateVideovotes < ActiveRecord::Migration
  def change
    create_table :videovotes do |t|

      t.belongs_to :user
      t.belongs_to :video

      t.timestamps
    end
  end
end
