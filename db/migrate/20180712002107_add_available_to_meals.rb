class AddAvailableToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :available, :boolean
  end
end
