class AddSupplierNameToIndustries < ActiveRecord::Migration
  def change
    add_column :industries, :supplier_name, :string
  end
end
