class AddBarcodeToSpreeProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_products, :barcode, :string
  end
end
