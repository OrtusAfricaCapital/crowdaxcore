module Api
    module V1
        class VentureDetailsController < ApplicationController
            before_action :restrict_access  

            def index 
                ventureDetails = VentureDetail.order('created_at DESC')
                render json:{ventureDetails: ventureDetails}
            end

            # def show
            #     VentureDetail = VentureDetail.find(params[:id])
            #     render json:{VentureDetail: VentureDetail}
            # end

            # def create 
            #     @VentureDetail = VentureDetail.new(VentureDetail_params)
            #     if @VentureDetail.save 
            #         render json: {VentureDetail: @VentureDetail}, status: :created
            #     else
            #         render json: {status: 'Error', message: 'VentureDetail not saved', data: @VentureDetail.errors}, status: :unprocessable_entity
            #     end
            # end

            # def destroy 
            #     VentureDetail = VentureDetail.find(params[:id])
            #     VentureDetail.destroy
            #     render json: {status: "SUCCESS", message: "key deleted", data: VentureDetail}, status: :ok
                 
            # end

            # private 
            # def VentureDetail_params
            #     params.permit(:venture_id, 
            #          :full_description,
            #          :need, 
            #          :solution, 
            #          :milestones, 
            #          :how_it_works,
            #          :video_pitch, 
            #          :founded_date)
            # end
        end      
    end
end

