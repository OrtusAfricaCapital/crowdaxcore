module Api
    module V1
        class InvestsController < ApplicationController
            

        def index 
            invests = Invest.order('created_at DESC')#.where(approval_status: "false")
            render json:{invests: invests}
        end

            def create 
                invest = Invest.new(invest_params)
                if invest.save 
                    render json: {invest: invest}, status: :created
                else
                    render json: {status: 'Error', message: 'invest not saved', data: invest.errors}, status: :unprocessable_entity
                end
            end

            private 
            def invest_params
                params.permit(:user_id, :venture_id, :type_of_investment, :shares_purchased, :amount_invested, :investing_as)
            end
        end      
    end
end