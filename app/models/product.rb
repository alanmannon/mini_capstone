class Product < ApplicationRecord
  def is_discounted?
    if price > 10
      discount = "no"
    elsif price < 10
      discount = "yes"
    end
    discount
  end

  def tax
    @sales_tax = price * (0.09)
  end

  def total
    total_price = price + @sales_tax
  end
end
