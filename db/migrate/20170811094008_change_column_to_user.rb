class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :company_id, :integer, foreign_key: true
  end
end
