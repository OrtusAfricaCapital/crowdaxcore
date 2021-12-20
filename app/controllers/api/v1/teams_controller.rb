module Api
    module V1
        class TeamsController < ApplicationController
            before_action :restrict_access  

            def index 
                teams = Team.all#order('created_at DESC')#.where(approval_status: "false")
                render json:{teams: teams}
            end

            def show
                team = Team.find(params[:id])
                render json:{team: team}
            end

            def create 
                team = Team.new(team_params)
                
                if team.save 
                    render json: {team: team}, status: :created
                else
                    render json: {status: 'Error', message: 'team not saved', data: team.errors}, status: :unprocessable_entity
                end
            end

            def destroy 
                team = Team.find(params[:id])
                team.destroy
                render json: {status: "SUCCESS", message: "key deleted", data: team}, status: :ok
                 
            end

            private 

            def team_params
                params.permit(:venture_id, :name, :role, :gender, :bio)
            end
        end      
    end
end