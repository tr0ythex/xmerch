class Product < ActiveRecord::Base
  has_many :checked_products
  has_many :orders, through: :checked_products
end