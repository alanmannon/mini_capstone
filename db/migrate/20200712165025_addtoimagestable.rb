class Addtoimagestable < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :url, :string
    add_column :images, :product_id, :integer
  end
end
