class CreateBfps < ActiveRecord::Migration[5.1]
  def change
    create_table :bfps do |t|
      t.string :long_name
      t.string :data_source
      t.integer :gtin_upc
      t.string :manufacturer
      t.text :ingredients_english
      t.integer :ndb_no

      t.timestamps
    end
  end
end
