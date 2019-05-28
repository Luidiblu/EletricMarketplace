class Product < ApplicationRecord
  belongs_to :user
  validates :name, :description, :category, :price, presence: true
  has_many :orders
end
