class Meal < ApplicationRecord
  belongs_to :category
  has_many :order_meal
  has_one_attached :image
end
