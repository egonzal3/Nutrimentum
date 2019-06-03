class AddRecipeCountToBfps < ActiveRecord::Migration[5.1]
  def change
    add_column :bfps, :recipes_count, :integer
  end
end
