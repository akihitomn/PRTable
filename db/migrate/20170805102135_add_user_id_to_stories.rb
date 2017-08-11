class AddUserIdToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :user_id, :integer
  end
end
