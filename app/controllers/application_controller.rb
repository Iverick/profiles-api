class ApplicationController < ActionController::API
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :admin, :username])
  end 
end
