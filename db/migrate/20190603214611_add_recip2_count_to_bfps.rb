class AddRecip2CountToBfps < ActiveRecord::Migration[5.1]
  def change
    add_column :bfps, :recip2_count, :integer
  end
end
