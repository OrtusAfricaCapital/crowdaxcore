Rails.application.routes.draw do
  
  root 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
      
      resources :api_keys, only: [:index, :show, :create, :update, :destroy]
      resources :ventures, only: [:index, :show, :create, :update, :destroy]
     end
  end
end

