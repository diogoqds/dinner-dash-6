class Order < ApplicationRecord
  belongs_to :user
  belongs_to :situation
  has_many :order_meals, dependent: :destroy
  has_many :meals, through: :order_meals
end
