class Order < ApplicationRecord
  belongs_to :user
  belongs_to :situation
  has_many :order_meal
end
