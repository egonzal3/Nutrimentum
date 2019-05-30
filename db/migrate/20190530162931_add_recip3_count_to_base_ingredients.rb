class AddRecip3CountToBaseIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :base_ingredients, :recip3_count, :integer
  end
end
