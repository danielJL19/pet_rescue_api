class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :type_of_pet, :description
end
