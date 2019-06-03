class Recipe < ApplicationRecord
  # Direct associations

  belongs_to :ingredie1,
             :required => false,
             :class_name => "RegularFood",
             :foreign_key => "ingredient1"

  belongs_to :ingredie2,
             :required => false,
             :class_name => "RegularFood",
             :foreign_key => "ingredient2"

  belongs_to :ingredie3,
             :required => false,
             :class_name => "RegularFood",
             :foreign_key => "ingredient3"

  belongs_to :ingredie4,
             :required => false,
             :class_name => "RegularFood",
             :foreign_key => "ingredient4"

  belongs_to :ingredie5,
             :required => false,
             :class_name => "RegularFood",
             :foreign_key => "ingredient5"

  has_many   :meals,
             :foreign_key => "food"

  belongs_to :ingred5,
             :required => false,
             :class_name => "Bfp",
             :foreign_key => "ingredient5",
             :counter_cache => :recip5_count

  belongs_to :ingred4,
             :required => false,
             :class_name => "Bfp",
             :foreign_key => "ingredient4",
             :counter_cache => :recip4_count

  belongs_to :ingred3,
             :required => false,
             :class_name => "Bfp",
             :foreign_key => "ingredient3",
             :counter_cache => :recip3_count

  belongs_to :ingred2,
             :required => false,
             :class_name => "Bfp",
             :foreign_key => "ingredient2",
             :counter_cache => :recip2_count

  belongs_to :ingred1,
             :class_name => "Bfp",
             :foreign_key => "ingredient1",
             :counter_cache => true

  # Indirect associations

  # Validations

end
