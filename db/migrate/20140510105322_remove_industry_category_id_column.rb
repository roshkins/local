class RemoveIndustryCategoryIdColumn < ActiveRecord::Migration
  def change
    remove_column :industries, :category_id
  end
end
