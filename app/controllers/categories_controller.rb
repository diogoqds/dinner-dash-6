class CategoriesController < ApplicationController
    before_action :authenticate_user!
    before_action :is_admin?

    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        else
            render :new
        end
    end

    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to categories_path
        else
            render :edit
        end
    end

    def destroy
        @category = Category.find(params[:id])

        begin
            @category.destroy
            flash[:notice] = 'A categoria foi excluída com sucesso.'
            redirect_to categories_path
        rescue StandardError => e
            flash[:alert] = 'A categoria não pôde ser excluída. Talvez ela esteja sendo usada por alguma refeição.'
            redirect_to categories_path
        end
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end

end
