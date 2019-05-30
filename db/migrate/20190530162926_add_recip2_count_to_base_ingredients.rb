class AddRecip2CountToBaseIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :base_ingredients, :recip2_count, :integer
  end
end
