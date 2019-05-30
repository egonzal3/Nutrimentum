class AddRecip4CountToBaseIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :base_ingredients, :recip4_count, :integer
  end
end
