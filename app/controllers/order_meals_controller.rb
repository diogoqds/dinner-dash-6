class OrderMealsController < ApplicationController
  before_action :set_order_meal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /order_meals
  # GET /order_meals.json
  def index
    @order_meals = OrderMeal.all
  end

  # GET /order_meals/1
  # GET /order_meals/1.json
  def show
  end

  # GET /order_meals/new
  def new
    @order_meal = OrderMeal.new
  end

  # GET /order_meals/1/edit
  def edit
  end

  # POST /order_meals
  # POST /order_meals.json
  def create
    @order_meal = OrderMeal.new(order_meal_params)
    if @order_meal.save
      redirect_to order_meal_path(@order_meal.id)
    else
      render :new
    end
  end

  # PATCH/PUT /order_meals/1
  # PATCH/PUT /order_meals/1.json
  def update
    if @order_meal.update(order_meal_params)
      redirect_to order_meal_path(@order_meal.id)
    else
      render :edit
    end
  end

  # DELETE /order_meals/1
  # DELETE /order_meals/1.json
  def destroy
    @order_meal.destroy
    redirect_to helper_path(@order_meal.order_id)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_meal
      @order_meal = OrderMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_meal_params
      params.require(:order_meal).permit(:quantity, :order_id, :meal_id)
    end
end
