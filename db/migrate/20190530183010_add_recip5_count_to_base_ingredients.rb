class AddRecip5CountToBaseIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :base_ingredients, :recip5_count, :integer
  end
end
