module Api
    module V1
        class UserDetailsController < ApplicationController
            before_action :restrict_access  

            def index 
                userDetails = UserDetail.all#order('created_at DESC')#.where(approval_status: "false")
                render json:{userDetails: userDetails}
            end

            def show
                userDetail = UserDetail.find(params[:id])
                render json:{userDetail: userDetail}
            end

            def create 
                userDetail = UserDetail.new(userDetail_params)
                
                if userDetail.save 
                    render json: {userDetail: userDetail}, status: :created
                else
                    render json: {status: 'Error', message: 'userDetail not saved', data: userDetail.errors}, status: :unprocessable_entity
                end
            end

            def destroy 
                userDetail = UserDetail.find(params[:id])
                userDetail.destroy
                render json: {status: "SUCCESS", message: "key deleted", data: userDetail}, status: :ok
                 
            end

            private 

            def userDetail_params
                params.permit(:user_id, 
                    :phonenumber, 
                    :bio, 
                    :date_of_birth, 
                    :country,
                    :address, 
                    :cover_photo, 
                    :profile_photo, 
                    :website,
                    :total_amount_invested, 
                    :companies_invested_in, 
                    :investment_annual_limit
                )
            end
        end      
    end
end