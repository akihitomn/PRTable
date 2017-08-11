class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :company_id, :integer, index: true, foreign_key: true
  end
end
