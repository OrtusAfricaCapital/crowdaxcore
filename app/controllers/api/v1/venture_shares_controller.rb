module Api
    module V1
        class VentureSharesController < ApplicationController
            before_action :restrict_access  

            def index 
                ventureShares = VentureShare.order('created_at DESC')#.where(approval_status: "false")
                render json:{ventureShares: ventureShares}
            end

            def show
                ventureShare = VentureShare.find(params[:id])
                render json:{ventureShare: ventureShare}
            end

            def create 
                @ventureShare = VentureShare.new(ventureShare_params)
                if @ventureShare.save 
                    render json: {ventureShare: @ventureShare}, status: :created
                else
                    render json: {status: 'Error', message: 'ventureShare not saved', data: @ventureShare.errors}, status: :unprocessable_entity
                end
            end

            def destroy 
                ventureShare = VentureShare.find(params[:id])
                ventureShare.destroy
                render json: {status: "SUCCESS", message: "key deleted", data: ventureShare}, status: :ok
                 
            end

            private 
            def ventureShare_params
                params.permit(:venture_id, 
                     :unit_share_value,
                     :overall_shares, 
                     :total_sold_shares, 
                     :available_shares, 
                     :valuation_cap)
            end
        end      
    end
end







# params.permit(:venture_id, :unit_share_value, :overall_shares, :total_sold_shares, :available_shares, :valution_cap)