class Api::V1::ApiKeysController < ApplicationController
   before_action :restrict_access
    def index 
        apiKeys = ApiKey.order('created_at DESC')
        render json:{apiKeys: apiKeys}
      end
    
   
    def create
    apiKey = ApiKey.new()
        
        
     if apiKey.save 
        render json: {data: apiKey}, status: :created
     else
        render json: {status: 'Error', message: 'ApiKey not saved', data: apiKey.errors}, status: :unprocessable_entity
     end
    end
end
