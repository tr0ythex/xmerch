class Api::V1::SessionsController < ApplicationController
  before_action :authenticate_with_token!, only: :destroy
  
  def create
    user = User.find_by(username: session_params[:username])
    if user && user.authenticate(session_params[:password])
      render json: { auth_token: user.auth_token }, status: :ok
    else
      render json: { errors: "Invalid login or password" }, status: :unprocessable_entity
    end
  end
  
  def destroy
    user = current_user
    user.generate_auth_token!
    user.save
    head :ok
  end

  private
    def session_params
      params.require(:user).permit(:username, :password)
    end
end