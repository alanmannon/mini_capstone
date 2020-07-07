class Product < ApplicationRecord
  def is_discounted?
    price < 10
  end

  def tax
    sales_tax = price * (0.09)
  end

  def total
    total_price = price + tax
  end
end
