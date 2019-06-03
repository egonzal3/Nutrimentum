class AddMealCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :meals_count, :integer
  end
end
