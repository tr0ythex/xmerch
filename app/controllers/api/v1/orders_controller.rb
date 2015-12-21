class Api::V1::OrdersController < ApplicationController
  before_action :authenticate_with_token!, only: :index
  
  def index
    @orders = Order.where(:user_id => nil).limit(params[:limit]).offset(params[:offset])
    render json: @orders
    #, only: [:id, :status]
  end
  
  def show
    respond_with Order.find(params[:id])
  end
end