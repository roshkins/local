class AddIndustryCategoriesJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_industries, id: false do |t|
      t.belongs_to :category
      t.belongs_to :industry
    end
  end
end
