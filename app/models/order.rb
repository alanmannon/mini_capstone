class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :carted_products

  def tax
    sales_tax = price * (0.09)
  end

  def total
    total_price = price + tax
  end
end
