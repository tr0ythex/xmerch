Rails.application.routes.draw do
  root 'static_pages#index'
  post 'send_email', to: 'static_pages#send_email', as: 'send_email'
  
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy]
      get 'users/me/orders(/:limit)(/:offset)', to: 'users#user_orders'
      
      resource :orders, only: [:index]
      get 'orders(/:limit)(/:offset)', to: 'orders#index'
      # do
      #   match '(/:limit)(/:offset)', to: 'orders#index', via: :get
      # end
      # get 'orders(/:user_id)(/:limit)(/:offset)', to: 'orders#index', via: :get
      post 'login', to: 'sessions#create', as: 'login'
      delete 'logout', to: 'sessions#destroy', as: 'logout'
    end
  end
end
