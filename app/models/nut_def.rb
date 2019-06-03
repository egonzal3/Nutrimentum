class NutDef < ApplicationRecord
  # Direct associations

  has_many   :nut_data_foods,
             :foreign_key => "nutr_no"

  # Indirect associations

  # Validations

end
