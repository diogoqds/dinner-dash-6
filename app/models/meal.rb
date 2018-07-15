class Meal < ApplicationRecord
  belongs_to :category
  
  has_many :order_meals
  has_many :orders, through: :order_meals
  has_one_attached :image

  validates_presence_of :name , :description , :price
end
