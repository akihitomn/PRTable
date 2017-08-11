class Stories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title, null: false, unique: true
      t.text :body, null: false
      t.string :image, null: false
      t.integer :user_id, foreign_key: true
      t.integer :company_id, foreign_key: true

      t.timestamps
    end
  end
end
