module Api
    module V1
        class InvestsController < ApplicationController
            #before_action :restrict_access
            #creates a new venture 
            def create
                invest = Invest.new(invest_params)

                if invest.save 
                    render json: {invest: invest}, status: :created
                else
                    render json: {status: 'Error', message: 'Venture not saved', data: venture.errors}, status: :unprocessable_entity
                end
            end
            def invest_params
                params.permit(:user_id, 
                 :business_id, 
                 :type_of_investment,
                 :shares_purchased, 
                 :amount_invested, 
                 :investing_as)
                # params.permit(:user_id, :name, :short_description,  :sector, :investment_stage)
              end
        end      
    end
end