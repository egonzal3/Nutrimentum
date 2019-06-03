class CreateNutrientsBfps < ActiveRecord::Migration[5.1]
  def change
    create_table :nutrients_bfps do |t|
      t.integer :ndb_no
      t.integer :nutrient_code
      t.string :nutrient_name
      t.string :derivation_code
      t.float :output_value
      t.string :output_uom

      t.timestamps
    end
  end
end
