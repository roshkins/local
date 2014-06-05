class AddSupplierIdsAndOfferIdsToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :supplier_ids, :text
    add_column :searches, :offer_ids, :text
  end
end
