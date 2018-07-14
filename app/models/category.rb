class Category < ApplicationRecord
    has_many :meals
    validates_presence_of :name 
end
