class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }

  belongs_to :supplier
  has_many :orders
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products

  # def supplier
  #   supplier = Supplier.find_by(id: supplier_id)
  # end

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
