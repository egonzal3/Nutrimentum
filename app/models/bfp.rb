class Bfp < ApplicationRecord
  # Direct associations

  has_many   :serving_size_bfps,
             :foreign_key => "ndb_no"

  has_many   :meals,
             :foreign_key => "food"

  has_many   :nutrients_bfps,
             :foreign_key => "ndb_no"

  has_many   :recip5,
             :class_name => "Recipe",
             :foreign_key => "ingredient5"

  has_many   :recip4,
             :class_name => "Recipe",
             :foreign_key => "ingredient4"

  has_many   :recip3,
             :class_name => "Recipe",
             :foreign_key => "ingredient3"

  has_many   :recip2,
             :class_name => "Recipe",
             :foreign_key => "ingredient2"

  has_many   :recipes,
             :foreign_key => "ingredient1"

  # Indirect associations

  # Validations

end
