 class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
 protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :name, :admin) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
        end
 
  def user_for_paper_trail
    user_signed_in? ? current_user.try(:id) : 'Unknown user'
  end

  def info_for_paper_trail
    { user_id: current_user.id } if user_signed_in?
  end

end
# config/initializers/paper_trail.rb
