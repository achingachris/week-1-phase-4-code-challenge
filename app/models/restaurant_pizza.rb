class RestaurantPizza < ApplicationRecord
    validates :price, numericality: {in: 1..30}

    belongs_to :pizza
    belongs_to :restaurant
end
