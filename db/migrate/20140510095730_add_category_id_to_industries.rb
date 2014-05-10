class AddCategoryIdToIndustries < ActiveRecord::Migration
  def change
    add_column :industries, :category_id, :integer
  end
end
