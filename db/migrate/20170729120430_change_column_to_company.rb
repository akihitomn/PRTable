class ChangeColumnToCompany < ActiveRecord::Migration[5.1]
  def change
    remove_column :companies, :name, :string, index: true, null: false, unique: true
    add_column :companies, :name, :string, index: true, unique: true
  end
end
