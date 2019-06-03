class CreateNutDataFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :nut_data_foods do |t|
      t.integer :ndb_no
      t.integer :nutr_no
      t.float :nutr_val

      t.timestamps
    end
  end
end
