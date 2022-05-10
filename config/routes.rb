Rails.application.routes.draw do
  
  root 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
      resources :api_keys, only: [:index, :show, :create, :update, :destroy]
      resources :ventures, only: [:index, :show, :create, :update]
      
      resources :invests, only: [:index, :show, :create, :destroy]
      
      resources :competitors, only: [:index, :show, :create, :update, :destroy]
      
      resources :venture_shares, only: [:index, :show, :create, :update, :destroy]
      resources :venture_details, only: [:index, :show, :create, :update, :destroy]
      resources :venture_admins, only: [:index, :show, :update, :destroy]

      resources :user_details, only: [:index, :show, :create, :update, :destroy]
      resources :teams, only: [:index, :show, :create, :update, :destroy]
      resources :social_medias, only: [:index, :show, :create, :update, :destroy]

      
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      
      
    end
  end
end

