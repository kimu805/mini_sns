class UsersController < ApplicationController
  before_action :configure_permitted_parameter, if: :devise_controller?

  private
  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :lastname, :firstname, :birthday])
  end
end
