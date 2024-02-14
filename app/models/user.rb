class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, length: { minimum: 6 }

end
