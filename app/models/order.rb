class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :shop
  
  has_many :checked_products
  has_many :products, through: :checked_products
  
  has_many :tasks
  has_many :order_photos
  
  accepts_nested_attributes_for :order_photos
end
