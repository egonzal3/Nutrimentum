class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.integer :eater
      t.integer :food

      t.timestamps
    end
  end
end
