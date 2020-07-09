class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }

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
