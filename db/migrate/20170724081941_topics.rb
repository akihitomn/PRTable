class Topics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name, null: false, unique: true, index: true
    end
  end
end
