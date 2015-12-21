module Api
  class ShopsController < ApplicationController
    respond_to :json
    
    def index
      @shops = Shop.all
      respond_with @shops
    end
    
    def show
      @shop = Shop.find(params[:id])
      respond_with @shop
    end
  end
end