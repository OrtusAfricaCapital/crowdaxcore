module Api
    module V1
        class SocialMediasController < ApplicationController
            before_action :restrict_access  

            def index 
                sociaMedias = SocialMedium.all#order('created_at DESC')#.where(approval_status: "false")
                render json:{sociaMedias: sociaMedias}
            end

            def show
                sociaMedia = SocialMedium.find(params[:id])
                render json:{sociaMedia: sociaMedia}
            end

            def create 
                sociaMedia = SocialMedium.new(socialMedia_params)
                
                if sociaMedia.save 
                    render json: {sociaMedia: sociaMedia}, status: :created
                else
                    render json: {status: 'Error', message: 'sociaMedia not saved', data: sociaMedia.errors}, status: :unprocessable_entity
                end
            end

            def destroy 
                sociaMedia = SocialMedium.find(params[:id])
                sociaMedia.destroy
                render json: {status: "SUCCESS", message: "key deleted", data: sociaMedia}, status: :ok
                 
            end

            private 

            def socialMedia_params
                params.permit(:venture_id,
                     :linkedin,
                     :facebook,
                     :twitter, 
                     :instagram,
                     :youtube)
            end
        end      
    end
end