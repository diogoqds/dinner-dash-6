class RemoveAvailabelFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :meals, :availabel, :boolean
  end
end
