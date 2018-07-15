class CartsController < ApplicationController
  def create
    session[:cart] = {}
  end

  def add_item
        @id = params[:id]
        @quantity = params[:quantity].to_i
        if current_cart.include? @id
          current_cart[@id] += @quantity
        else
            current_cart[@id] = @quantity
        end 
        puts session[:cart]
        redirect_to root_path
    end

  def remove_item
    @item = params[:id]
    session[:cart] = current_cart.except(@item)
    redirect_to root_path
  end

  private
    def current_cart
      # returns the session or an empty hash
      session[:cart] ||= {}
    end
end
