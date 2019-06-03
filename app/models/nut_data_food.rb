class NutDataFood < ApplicationRecord
  # Direct associations

  belongs_to :nutr_fact,
             :class_name => "NutDef",
             :foreign_key => "nutr_no"

  belongs_to :product,
             :class_name => "RegularFood",
             :foreign_key => "ndb_no"

  # Indirect associations

  # Validations

end
