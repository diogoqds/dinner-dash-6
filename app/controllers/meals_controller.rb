class MealsController < ApplicationController
    before_action :authenticate_user!
    before_action :is_admin?

    def index
        @meals = Meal.all
    end

    def new
        @meal = Meal.new
    end

    def create
        @meal = Meal.new(meal_params)
        if @meal.save
            redirect_to meals_path
        else
            render :new
        end
    end

    def edit
        @meal = Meal.find(params[:id])
    end

    def update
        @meal = Meal.find(params[:id])
        if @meal.update(meal_params)
            redirect_to meals_path
        else
            render :edit
        end
    end

    def destroy
        @meal = Meal.find(params[:id])
        @meal.destroy
        flash[:notice] = 'A refeição foi excluída com sucesso.'
        redirect_to meals_path
    end

    private

    def meal_params
        params.require(:meal).permit(:name, :category_id, :description, :price, :available, :image)
    end
end
