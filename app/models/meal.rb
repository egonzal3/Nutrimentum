class Meal < ApplicationRecord
  # Direct associations

  belongs_to :reg_food,
             :required => false,
             :class_name => "RegularFood",
             :foreign_key => "food"

  belongs_to :plate,
             :required => false,
             :class_name => "Recipe",
             :foreign_key => "food",
             :counter_cache => true

  belongs_to :meal_bfp,
             :required => false,
             :class_name => "Bfp",
             :foreign_key => "food"

  belongs_to :user,
             :foreign_key => "eater",
             :counter_cache => true

  # Indirect associations

  # Validations

end
