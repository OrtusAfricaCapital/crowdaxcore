module Api
    module V1
        class VentureAdminsController < ApplicationController
            before_action :restrict_access  

            def index 
                venture = Venture.order('created_at DESC')
                render json:{venture: venture}
            end

             #retrieves one venture 
            def show
                venture = Venture.find(params[:id])
                render json:{venture: venture}
            end

            def update
                venture = Venture.find(params[:id])
                if venture.update(venture_params)
                  render json: {venture: venture}
                else
                  render json: {status: 'Error', message: 'Venture not updated', data: venture.errors}, status: :unprocessable_entity
                end
              end

            def destroy
                venture = Venture.find(params[:id])

                venture.destroy
                
                render json: {status: 'SUCCESS', message: 'Deleted venture', data: venture}, status: :ok
            end
            

            private

            def venture_params
                params.permit(
                 :name, 
                 :short_description,
                 :logo, 
                 :sector, 
                 :investment_stage, 
                 :traction, 
                 :location, 
                 :referred_by, 
                 :pitchdeck,
                 :approval_status,
                 :approved_date,
                 :last_investing_date,
                 :feature_image,
                 :investment_amount_targetted)
                # params.permit(:user_id, :name, :short_description,  :sector, :investment_stage)
              end

        end      
    end
end

