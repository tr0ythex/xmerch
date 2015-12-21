class Shop < ActiveRecord::Base
  has_many :orders, dependent: :nullify
  
  validates :name, presence: true
  validates :address, presence: true
end