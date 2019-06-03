class RegularFood < ApplicationRecord
  # Direct associations

  has_many   :recipes1,
             :class_name => "Recipe",
             :foreign_key => "ingredient1"

  has_many   :recipes2,
             :class_name => "Recipe",
             :foreign_key => "ingredient2"

  has_many   :recipes3,
             :class_name => "Recipe",
             :foreign_key => "ingredient3"

  has_many   :recipes4,
             :class_name => "Recipe",
             :foreign_key => "ingredient4"

  has_many   :recipes,
             :foreign_key => "ingredient5"

  has_many   :meals,
             :foreign_key => "food"

  has_many   :nut_data_foods,
             :foreign_key => "ndb_no"

  # Indirect associations

  # Validations

end
