class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.column :name, :string
      t.column :slug, :string

      t.timestamps
    end
  end
end
