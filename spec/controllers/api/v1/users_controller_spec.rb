require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe "GET all users" do
    it { 
      get :index
      should respond_with 200 
    }
  end
end
