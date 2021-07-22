
module Api
  module V1
    class RegistrationsController < ApplicationController
      
      #token to protect api inherited from applicationcontroler
      before_action :restrict_access
      
      def create
        user = User.create!(
          firstname: params['user']['firstname'],
          lastname: params['user']['lastname'],
          email: params['user']['email'],
          password: params['user']['password'],
          password_confirmation: params['user']['password_confirmation'],
          account_type: params['user']['account_type'],
          ##verified: params['user']['verified']      
        )
    
        if user
          session[:user_id] = user.id
          render json: {
            status: :created,
            user: user
          }
        else
          render json: { status: 500 }
        end #ends if clause 
        
      end #ends create method 

    

    end #ends class 
  end #ends V1 module
end #ends API module