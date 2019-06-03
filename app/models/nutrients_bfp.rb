class NutrientsBfp < ApplicationRecord
  # Direct associations

  belongs_to :product,
             :class_name => "Bfp",
             :foreign_key => "ndb_no"

  # Indirect associations

  # Validations

end
