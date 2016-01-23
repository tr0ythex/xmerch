class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, only: [:username, :email, :sex]
  end
    
  def show
    @user = User.find(params[:id])
    render json: @user
  end
    
  def create
    @user = User.create(user_params)
    if @user.save
      render json: { auth_token: @user.auth_token }, status: :created
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end
  
  def user_orders
    render json: current_user.orders.limit(params[:limit]).offset(params[:offset])
  end
    
  private
    def user_params
      params.require(:user).permit(:username, :password, :age, :email, :sex)
    end
end