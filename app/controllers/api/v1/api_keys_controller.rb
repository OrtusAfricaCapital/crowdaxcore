class Api::V1::ApiKeysController < ApplicationController
   
    def index 
       apiKeys = ApiKey.order('created_at DESC')
       render json:{apiKeys: apiKeys}
    end
    
   
   def create
      apiKey = ApiKey.new()

      if apiKey.save 
          render json: {data: apiKey}, status: :created
      else
         render json: {status: 'Error', message: 'ApiKey saved not', data: apiKey.errors}, status: :unprocessable_entity
      end
   end

   # def destroy 
   #    apikey = ApiKey.find(params[:id])
   #    apikey.destroy
   #    render json: {status: "SUCCESS", message: "key deleted", data: apikey}, status: :ok
    
   # end

end
