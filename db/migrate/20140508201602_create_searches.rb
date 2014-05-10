class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :industry_id
      t.string :location
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
