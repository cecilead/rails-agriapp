class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  
end
