class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title, null: false, unique: true
      t.text :story, null: false
      t.string :image

      t.timestamps
    end
  end
end
