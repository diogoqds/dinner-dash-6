class MealsController < ApplicationController

    def index
    end

    private

    def meal_params
        params.require(:meal).permit(:name, :category_id, :description, :price, :image)
    end
end
