class Pet < ApplicationRecord
  validates :name, presence: true
  validates :type_of_pet, presence: true
  validates :description, presence: true
end
