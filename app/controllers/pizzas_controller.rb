class PizzasController < ApplicationController
    def index
        pizzas= Pizza.all
        render json: pizzas, status: :ok
    end
    def show
        pizza =Pizza.find_by(params[:id])
        render json: pizza, serializer: RestaurantPizzaSerializer, status: :ok
    end
end
