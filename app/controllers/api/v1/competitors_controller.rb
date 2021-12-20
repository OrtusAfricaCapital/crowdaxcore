module Api
    module V1
        class CompetitorsController < ApplicationController
            before_action :restrict_access  

            def index 
                competitors = Competitor.order('created_at DESC')#.where(approval_status: "false")
                render json:{competitors: competitors}
            end

            def show
                competitor = Competitor.find(params[:id])
                render json:{competitor: competitor}
            end

            def create 
                @competitor = Competitor.new(competitor_params)
                if @competitor.save 
                    render json: {competitor: @competitor}, status: :created
                else
                    render json: {status: 'Error', message: 'competitor not saved', data: competitor.errors}, status: :unprocessable_entity
                end
            end

            def destroy 
                competitor = Competitor.find(params[:id])
                competitor.destroy
                render json: {status: "SUCCESS", message: "key deleted", data: competitor}, status: :ok
                 
            end

            # def update 
            #     competitor = Competitor.find(params[:id])
            #     if competitor.update_attributes(competitor_params)
            #         render json: {status: 'Success', message: 'Competitor Update', data: competitor}
            #     else
            #         render json: {status: 'Error', message: 'competitor not update', data: competitor.errors}, status: :unprocessable_entity

            #     end
            # end

            private 
            def competitor_params
                params.permit(:venture_id, :name, :difference, :advantage)
            end
        end      
    end
end