class CreateRegularFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :regular_foods do |t|
      t.integer :ndb_no
      t.integer :fdgrp_cd
      t.text :long_desc
      t.string :shrt_desc
      t.text :comname
      t.text :manufacname
      t.boolean :survey
      t.text :ref_desc
      t.integer :refuse
      t.text :sciname
      t.float :n_factor
      t.float :pro_factor
      t.float :fat_factor
      t.float :cho_factor

      t.timestamps
    end
  end
end
