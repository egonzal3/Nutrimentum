class Meal < ApplicationRecord
  # Direct associations

  belongs_to :plate,
             :class_name => "Recipe",
             :foreign_key => "food",
             :counter_cache => true

  belongs_to :user,
             :class_name => "UsersInformation",
             :foreign_key => "eater",
             :counter_cache => true

  # Indirect associations

  # Validations

end
