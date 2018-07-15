class CreateSituations < ActiveRecord::Migration[5.2]
  def change
    create_table :situations do |t|
      t.text :description

      t.timestamps
    end
  end
end
