class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :user, presence: true
  validates :product, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  
end
