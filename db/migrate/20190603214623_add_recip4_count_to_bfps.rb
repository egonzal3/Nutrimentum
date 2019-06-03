class AddRecip4CountToBfps < ActiveRecord::Migration[5.1]
  def change
    add_column :bfps, :recip4_count, :integer
  end
end
