class AddMealCountToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :meals_count, :integer
  end
end
