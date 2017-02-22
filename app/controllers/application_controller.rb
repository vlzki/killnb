class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :asset_status, :weapons])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :asset_status, :weapons])
  end

  def user_params
  	params.require(:user).permit(:name, :photo)
  end

end
