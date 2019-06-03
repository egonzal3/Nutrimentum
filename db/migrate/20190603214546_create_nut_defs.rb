class CreateNutDefs < ActiveRecord::Migration[5.1]
  def change
    create_table :nut_defs do |t|
      t.string :units
      t.string :tagname
      t.text :nutrdesc
      t.integer :num_dec
      t.integer :sr_order

      t.timestamps
    end
  end
end
