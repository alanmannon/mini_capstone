class Addsupplierinfotoproduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :supplier_info, :string
  end
end
