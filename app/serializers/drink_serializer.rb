class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :units, :price
  has_one :user
end
