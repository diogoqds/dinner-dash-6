class MealsController < ApplicationController

    def index
    end

    def new
        @meal = Meal.new
    end

    def create
    end

    private

    def meal_params
        params.require(:meal).permit(:name, :category_id, :description, :price, :image)
    end
end
