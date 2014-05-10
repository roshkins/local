class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.text :details
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :supplier_id
      t.integer :view_count
      t.integer :accept_count

      t.timestamps
    end
  end
end
