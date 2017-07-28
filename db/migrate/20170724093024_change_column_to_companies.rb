class ChangeColumnToCompanies < ActiveRecord::Migration[5.1]
  def change
    remove_column :companies, :name
    add_column :companies, :name, :string, index: true, null: false, unique: true
    add_column :companies, :business, :text
    add_column :companies, :president, :string
    add_column :companies, :foundation, :string
    add_column :companies, :addresss, :text
    add_column :companies, :vision_mission, :string
    add_column :companies, :url, :string
  end
end
