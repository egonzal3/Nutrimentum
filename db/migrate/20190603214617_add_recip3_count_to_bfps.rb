class AddRecip3CountToBfps < ActiveRecord::Migration[5.1]
  def change
    add_column :bfps, :recip3_count, :integer
  end
end
