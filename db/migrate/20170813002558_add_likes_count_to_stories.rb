class AddLikesCountToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :likes_count, :integer
  end
end
