class AddCompanyIdToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :company_id, :integer
  end
end
