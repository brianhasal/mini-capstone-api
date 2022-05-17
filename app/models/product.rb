class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  belongs_to :user
  belongs_to :supplier
  
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :orders
  has_many :images
  has_many :category_products
  # def images
  #   Image.where(product_id: id)
  # end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
  
end
