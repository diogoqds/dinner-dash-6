class AddAvailabelToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :availabel, :boolean
  end
end
