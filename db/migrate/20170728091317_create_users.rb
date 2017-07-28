class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, index:true, null: false, unique: true
      t.text :inquiry
      t.text :message

      t.timestamps
    end
  end
end
