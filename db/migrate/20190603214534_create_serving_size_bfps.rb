class CreateServingSizeBfps < ActiveRecord::Migration[5.1]
  def change
    create_table :serving_size_bfps do |t|
      t.integer :ndb_no
      t.float :serving_size
      t.string :serving_size_uom
      t.float :household_serving_size
      t.string :household_serving_size_uom
      t.string :preparation_state

      t.timestamps
    end
  end
end
