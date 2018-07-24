class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:page]

  before_action :configure_permitted_parameters, if: :devise_controller?



  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:is_company, :email, :password) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:is_company, :email, :password, :current_password) }
  end



  def after_sign_in_path_for(resource)
     request.env['omniauth.origin'] || stored_location_for(resource) || pages_home_path
  end

end
