class HomeController < ApplicationController

  def index
    if user_signed_in? and current_user.is_admin
        redirect_to backoffice_path
    end
  end

end
