class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :is_admin?, only: [:index, :backoffice]

    def index
        @users = User.order(:display_name)
    end

    def show
    end

    def edit
        @user = current_user
    end

    def update
        @user = current_user
        if @user.update_with_password(user_params)
            redirect_to user_path
        else
            render :edit
        end
    end

    def backoffice
    end

    private

    def user_params
        params.require(:user).permit(:display_name, :full_name, :email, :password, :password_confirmation, :current_password)
    end

end
