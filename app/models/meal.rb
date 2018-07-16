class Meal < ApplicationRecord
  belongs_to :category
  
  has_many :order_meals, dependent: :destroy
  has_many :orders, through: :order_meals
  has_one_attached :image, dependent: :destroy

  validates_presence_of :name , :description , :price
end
