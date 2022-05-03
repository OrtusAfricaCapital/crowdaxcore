class ApplicationController < ActionController::Base
    #
rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed
skip_before_action :verify_authenticity_token
 
private 
    def not_destroyed(e)
        render json: {errors: e.record.errors}, status: :unprocessable_entity
    end
protected
    def restrict_access #provides secure header token 
        authenticate_or_request_with_http_token do |token, options|
        ApiKey.exists?(access_token: token)
        end
    end #ends restrict_access   
end
