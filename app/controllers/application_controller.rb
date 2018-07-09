class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def is_admin?
        if !current_user.is_admin
            redirect_to root_path
            flash[:alert] = 'É preciso ter permissões de administrador para fazer isso.'
        end
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:display_name, :full_name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:display_name, :full_name])
    end
end
