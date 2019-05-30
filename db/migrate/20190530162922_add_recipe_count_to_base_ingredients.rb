class AddRecipeCountToBaseIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :base_ingredients, :recipes_count, :integer
  end
end
