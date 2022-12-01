class RestaurantWithPizzasSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  has_many :pizzas,each_serializer: RestaurantWithPizzasSerializer
end
