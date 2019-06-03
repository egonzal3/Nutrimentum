class AddRecip5CountToBfps < ActiveRecord::Migration[5.1]
  def change
    add_column :bfps, :recip5_count, :integer
  end
end
