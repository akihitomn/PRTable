class ChangeColumnToStory < ActiveRecord::Migration[5.1]
  def up
    change_column :stories, :user_id, :integer, foreing_key: true
    change_column :stories, :company_id, :integer, foreing_key: true
    change_column :stories, :image, :string, null: false
  end

  def down
    change_column :stories, :user_id, :integer
    change_column :stories, :company_id, :integer
    change_column :stories, :image, :string
  end
end
