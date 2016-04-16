class Api::V1::OrdersController < ApplicationController
  before_action :authenticate_with_token!, only: :index
  
  def index
    @orders = Order.where(:user_id => nil).limit(params[:limit]).offset(params[:offset])
    render json: @orders
    #, only: [:id, :status]
  end
  
  def update
    @order = Order.find(params[:id])
    
    if @order.update(orders_params)
      head :ok
    else
      head :unprocessable_entity
    end
  end
  
  def show
    respond_with Order.find(params[:id])
  end
  
  def orders_params
    params.require(:order).permit(order_photos_attributes: [:file])
  end
end