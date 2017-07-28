class StoryTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :story_topics do |t|
      t.integer :story_id, null: false, foreign_key: true
      t.integer :topic_id, null: false, foreign_key: true
    end
  end
end
