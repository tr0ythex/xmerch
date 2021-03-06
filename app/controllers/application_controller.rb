class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  private
  
  def current_user
    @current_user ||= User.find_by(auth_token: request.headers['Authorization'])
  end
  
  def authenticate_with_token!
    head :unauthorized unless current_user.present?
  end
  
  def user_json_params
    [:username, :auth_token, :balance, :withdraw_requested]
  end
end
