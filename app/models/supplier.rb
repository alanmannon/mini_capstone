class Supplier < ApplicationRecord
  has_many :products
  
  # def products
  #   products = Product.where(supplier_id: id)
  # end
end
