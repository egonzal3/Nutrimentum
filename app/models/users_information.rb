class UsersInformation < ApplicationRecord
  # Direct associations

  has_many   :meals,
             :foreign_key => "eater"

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
