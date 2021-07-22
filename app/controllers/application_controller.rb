class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
 
 protected
    def restrict_access #provides secure header token 
        authenticate_or_request_with_http_token do |token, options|
        ApiKey.exists?(access_token: token)
        end
    end #ends restrict_access
end
