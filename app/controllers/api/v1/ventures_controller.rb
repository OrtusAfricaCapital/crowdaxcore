module Api
  module V1
    class VenturesController < ApplicationController
      before_action :restrict_access
      #retrieves one venture 
      def show
        venture = Venture.find(params[:id])
        render json:{venture: venture}
      end

      #show all ventures

      def index 
        ventures = Venture.order('created_at DESC')#.where(approval_status: "false")
        render json:{ventures: ventures}
      end

      #creates a new venture 
      def create
        venture = Venture.new(venture_params)

        if venture.save 
            render json: {venture: venture}, status: :created
        else
            render json: {status: 'Error', message: 'Venture not saved', data: venture.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        venture = Venture.find(params[:id])
        venture.destroy
        render json: {status: 'SUCCESS', message: 'Deleted venture', data: venture}, status: :ok
      end

      def update
        venture = Venture.find(params[:id])
        if venture.update(venture_params)
          render json: {venture: venture}
        else
          render json: {status: 'Error', message: 'Venture not updated', data: venture.errors}, status: :unprocessable_entity
        end
      end



      private

      def venture_params
        params.permit(:user_id, 
         :name, 
         :short_description,
         :logo, 
         :sector, 
         :investment_stage, 
         :traction, 
         :location, 
         :referred_by, 
         :pitchdeck)
        # params.permit(:user_id, :name, :short_description,  :sector, :investment_stage)
      end
    end
  end
end